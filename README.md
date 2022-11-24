# dummy_flutter

dummy Flutter is a mobile project aimed for the simplication of WHSE to track the location of the trailers in the corresponding yard.

## Getting Started

### Code Architecture 
# Folder Structuring
*`application` consists of application layer codes, i.e Blocs and Cubit<br/>
*`config` consists of constants, depedencies for app initialization configuration<br/>
    -`dependency`<br/>
        -`environment_config.dart` class that invokes the dotenv package to load config urls for webservices from assets/env<br/>
        -`Dependencies.dart` asbtract class that consists of abstract methods for logger init<br/>
        -`development_dependencies.dart` A LazySingleton class that extends Dependencies to plant logger tree as per its build flavor<br/>
        -`production_dependencies.dart` A LazySingleton class that extends Dependencies to plant logger tree as per its build flavor<br/>
-`device_info`<br/>
    -`device_info.dart` abstract class that consists of abstract method to get deviceId<br/>
    -`device_info_impl.dart` A LazySingleton class that extends device_info to get deviceId as per its platform<br/>
-`constants` consists of all assets constants, error code constants, map screen constants, nav constants<br/>
-`navigation`<br/>
    -`models` folder that consists the named argument class file for passing objects/data via navigation<br/>
    -`app_navigation.dart` file that consists all the methods for named and pushNavigation to other screens<br/>
    -`config_route.dart` class that implements generateRoute consisting switch cases to all the screens using constant nav values<br/>
    -`global_navigataion_key.dart` a singleton class that exposes GlobalNavigationKey's context and overlaycontext for showing toast and other<br/>
-`app_theme.dart` A class that has all the themes/styling and styling constants which are used throughout the application<br/>
    
*`core`<br>
*`data`<br>
*`domain`<br>
*`injectable`<br>
*`screens`<br>