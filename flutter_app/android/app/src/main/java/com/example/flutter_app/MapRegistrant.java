package com.example.flutter_app;

import com.baidu.mapapi.map.MapView;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMessageCodec;

/**
 * auther: chenyonglong
 * date: 2019/10/9
 */
public final class MapRegistrant {

    public static void registerWith(PluginRegistry registry, MapView mapView){
        final String key = MapRegistrant.class.getCanonicalName();

        if(registry.hasPlugin(key)) return;

        PluginRegistry.Registrar registrar = registry.registrarFor(key);
        //返回百度地图API
        registrar.platformViewRegistry().registerViewFactory("MyMap", new MapViewFactory(new StandardMessageCodec(), mapView));
    }
}
