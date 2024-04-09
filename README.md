Project Overview:
This Flutter project is a mobile application designed to manage tasks
it has 4 folder 
resources : 
   - app_theme : the fonts 
   - assets_manager : the assets path
   - color_manager : the colors of the app
   - routes_manager : linking the navigation between screens 
   - widgets : the components made to be reused
preferences_manager:
   - preferences_manager : the local storage to save data
http_manager : 
   - end_points : the Url and paths 
   - http_manager : the CRUD function to handle apis
app : 
   - home : cubit(logic) - presentation(view) - model(data)
   - login :cubit(logic) - presentation(view) - model(data) - testing


Design Decisions:
Architecture: The project uses the BLoC (Business Logic Component)
architecture for state management, ensuring a clear separation of concerns.

Challenges Faced:
During the development of this project, the main challenges encountered included:
Integration with External APIs: Integrating data 
from external APIs and managing asynchronous operations effectively in a specific deadline
