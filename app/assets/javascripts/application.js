
import "controllers"

window.fireMapsLoadedEvent = function() {
    const env = new Event("mapsLoaded");
    document.dispatchEvent(env);
}
