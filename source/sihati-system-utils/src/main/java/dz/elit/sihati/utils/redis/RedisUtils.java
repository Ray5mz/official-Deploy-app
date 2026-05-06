package dz.elit.sihati.utils.redis;

import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Component
public class RedisUtils {

    private static final ConcurrentHashMap<String, String> store = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Long> expiry = new ConcurrentHashMap<>();
    private static final ScheduledExecutorService cleaner = Executors.newSingleThreadScheduledExecutor();

    static {
        // Clean up expired keys every 60 seconds
        cleaner.scheduleAtFixedRate(() -> {
            long now = System.currentTimeMillis();
            expiry.entrySet().removeIf(entry -> {
                if (entry.getValue() < now) {
                    store.remove(entry.getKey());
                    return true;
                }
                return false;
            });
        }, 60, 60, TimeUnit.SECONDS);
    }

    private static boolean isExpired(String key) {
        Long exp = expiry.get(key);
        if (exp != null && exp < System.currentTimeMillis()) {
            store.remove(key);
            expiry.remove(key);
            return true;
        }
        return false;
    }

    public static Set<String> keys(String pattern) {
        String regex = pattern.replace("*", ".*");
        return store.keySet().stream()
                .filter(k -> !isExpired(k) && k.matches(regex))
                .collect(Collectors.toSet());
    }

    public static Object get(String key) {
        if (isExpired(key)) return null;
        return store.get(key);
    }

    public static void set(String key, String value) {
        store.put(key, value);
        expiry.remove(key);
    }

    public static void set(String key, String value, Integer expireSeconds) {
        store.put(key, value);
        expiry.put(key, System.currentTimeMillis() + expireSeconds * 1000L);
    }

    public static void delete(String key) {
        store.remove(key);
        expiry.remove(key);
    }

    public static void hset(String key, String hashKey, Object object) {
        set(key + hashKey, object.toString());
    }

    public static void set(String key, String hashKey, Object object) {
        set(key + hashKey, object.toString());
    }

    public static void setNow(String key, String hashKey) {
        final DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        set(key + hashKey, df.format(LocalDateTime.now()));
    }

    public static void hSetNow(String key, String hashKey) {
        setNow(key, hashKey);
    }

    public static void set(String key, String hashKey, Object object, Integer expireSeconds) {
        set(key + hashKey, object.toString(), expireSeconds);
    }

    public static List<String> getAllKeys() {
        long now = System.currentTimeMillis();
        return store.keySet().stream()
                .filter(k -> {
                    Long exp = expiry.get(k);
                    return exp == null || exp >= now;
                })
                .collect(Collectors.toList());
    }

    public static void hset(String key, String hashKey, Object object, Integer expireSeconds) {
        set(key + hashKey, object.toString(), expireSeconds);
    }

    public static void hset(String key, HashMap<String, Object> map) {
        map.forEach((hashKey, value) -> set(key + hashKey, value.toString()));
    }

    public static void hsetAbsent(String key, String hashKey, Object object) {
        store.putIfAbsent(key + hashKey, object.toString());
    }

    public static Object hget(String key, String hashKey) {
        return get(key + hashKey);
    }

    public static Object get(String key, String hashKey) {
        return get(key + hashKey);
    }

    public static Object hget(String key) {
        String prefix = key;
        Map<String, String> result = new HashMap<>();
        store.entrySet().stream()
                .filter(e -> e.getKey().startsWith(prefix) && !isExpired(e.getKey()))
                .forEach(e -> result.put(e.getKey().substring(prefix.length()), e.getValue()));
        return result;
    }

    public static void deleteKey(String key) {
        delete(key);
        // Also delete all hash sub-keys
        store.keySet().stream()
                .filter(k -> k.startsWith(key))
                .collect(Collectors.toList())
                .forEach(k -> {
                    store.remove(k);
                    expiry.remove(k);
                });
    }

    public static Boolean hasKey(String key) {
        return !isExpired(key) && store.containsKey(key);
    }

    public static Boolean hasKey(String key, String hasKey) {
        return hasKey(key + hasKey);
    }
}