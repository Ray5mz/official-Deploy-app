package dz.elit.sihati.utils.redis;


import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;


@Component
public class RedisUtils {

    @Autowired
    private StringRedisTemplate redisTemplate;


    private static RedisUtils redisUtils;



    /**
     * initialization
     */
    @PostConstruct
    public void init() {
        redisUtils = this;
        redisUtils.redisTemplate = this.redisTemplate;
    }

    /**
     * Query key, support fuzzy query
     *
     * @param key
     */
    public static Set<String> keys(String key) {
        return redisUtils.redisTemplate.keys(key);
    }

    /**
     * Get value
     *
     * @param key
     */
    public static Object get(String key) {
        return redisUtils.redisTemplate.opsForValue().get(key);
    }


    /**
     * Setting value
     *
     * @param key
     * @param value
     */
    public static void set(String key, String value) {
        redisUtils.redisTemplate.opsForValue().set(key, value);
    }

    /**
     * Set the value and set the expiration time
     *
     * @param key
     * @param value
     * @param expire Expiration time in seconds
     */
    public static void set(String key, String value, Integer expire) {
        redisUtils.redisTemplate.opsForValue().set(key, value, expire, TimeUnit.SECONDS);
    }

    /**
     * Delete key
     *
     * @param key
     */
    public static void delete(String key) {
        redisUtils.redisTemplate.opsForValue().getOperations().delete(key);
    }

    /**
     * Setting objects
     *
     * @param key     key
     * @param hashKey hashKey
     * @param object  object
     */
    public static void hset(String key, String hashKey, Object object) {
        redisUtils.redisTemplate.opsForHash().put(key, hashKey, object);
    }


    public static void set(String key, String hashKey, Object object) {
       RedisUtils.set(key+ hashKey, object.toString());
    }


    public static void setNow(String key, String hashKey) {
        final DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

        RedisUtils .set(key+hashKey, df.format(LocalDateTime.now()));
    }

    public static void hSetNow(String key, String hashKey) {
        final DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

        redisUtils.redisTemplate.opsForHash().put(key, hashKey, df.format(LocalDateTime.now()));
    }

    /**
     * Setting objects
     *
     * @param key     key
     * @param hashKey hashKey
     * @param object  object
     * @param expire  Expiration time in seconds
     */
    public static void set(String key, String hashKey, Object object, Integer expire) {
        RedisUtils.set(key+ hashKey,  object.toString(),  expire);
    }



    public static List<String> getAllKeys() {
        List<String> keys = new ArrayList<>();
        keys=    redisUtils.redisTemplate.keys("*").stream().collect(Collectors.toList());

        return keys;

    }
    public static void hset(String key, String hashKey, Object object, Integer expire) {
        redisUtils.redisTemplate.opsForHash().put(key, hashKey, object);
        redisUtils.redisTemplate.expire(key, expire, TimeUnit.SECONDS);
    }




    /**
     * Set up HashMap
     *
     * @param key key
     * @param map map value
     */
    public static void hset(String key, HashMap<String, Object> map) {
        redisUtils.redisTemplate.opsForHash().putAll(key, map);
    }

    /**
     * key Set value when it does not exist
     *
     * @param key
     * @param hashKey
     * @param object
     */
    public static void hsetAbsent(String key, String hashKey, Object object) {
        redisUtils.redisTemplate.opsForHash().putIfAbsent(key, hashKey, object);
    }

    /**
     * Get Hash value
     *
     * @param key
     * @param hashKey
     * @return
     */
    public static Object hget(String key, String hashKey) {
        return redisUtils.redisTemplate.opsForHash().get(key, hashKey);
    }


    public static Object get(String key, String hashKey) {
        return RedisUtils.get(key+ hashKey);
    }

    /**
     * Get all the values of the key
     *
     * @param key
     * @return
     */
    public static Object hget(String key) {
        return redisUtils.redisTemplate.opsForHash().entries(key);
    }

    /**
     * Delete all values of key
     *
     * @param key
     */
    public static void deleteKey(String key) {
        redisUtils.redisTemplate.opsForHash().getOperations().delete(key);
    }
     /**
     * Judge whether there is a value under the key
     *
     * @param key
     */
    public static Boolean hasKey(String key) {
        return redisUtils.redisTemplate.opsForHash().getOperations().hasKey(key);
    }

    /**
     * Judge whether there is a value under key and hasKey
     *
     * @param key
     * @param hasKey
     */
    public static Boolean hasKey(String key, String hasKey) {
        return redisUtils.redisTemplate.opsForHash().hasKey(key, hasKey);
    }

}