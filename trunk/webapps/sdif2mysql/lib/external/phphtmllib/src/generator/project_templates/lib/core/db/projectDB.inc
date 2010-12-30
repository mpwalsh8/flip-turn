<?php
/**
 *
 * This is the child of DataBase object
 * that defines a Factory method for
 * connecting to the specific
 * databases and host.
 *
 * This file was originally autogenerated.
 */
class XX_PROJECT_DB_NAME_XX extends DataBase {

    /**
     * Singleton for this object
     *
     * @return XX_PROJECT_DB_NAME_XX
     */
    public static function singleton() {
        static $db = NULL;

        if (is_null($db)) {
            $db = XX_PROJECT_DB_NAME_XX::factory();
        }

        return $db;
    }

    /**
     * Factory for this object
     *
     * @return XX_PROJECT_DB_NAME_XX
     */
    public static function factory() {
        global $config;

        $dsn = DataBase::dsn($config->get('DB_TYPE'),
                             $config->get('DB_NAME'),
                             $config->get('DB_HOST'));
        return new XX_PROJECT_DB_NAME_XX($dsn,$config->get('DB_USERNAME'),$config->get('DB_PASSWORD'));
    }


    /**
     * This abstract method is called in the constructor to
     * populate the cache object, if used.
     *
     */
    protected function init_cache() {
        $this->set_cache_obj(XX_DB_CACHE_SINGLETON_XX);
    }

}

?>