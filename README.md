# Geoserver docker image (Marlin renderer enabled)
Docker files for GeoServer Ordnance survey

How to use ?
------------

* Build docker image:
    * First time:
        Get Docker image from @ianturton:

        docker pull "ianturton/geoserver-2.16-jdk-8-zoomstack"
    * Build:
        docker build -t "marlin/geoserver-2.16-jdk-8-zoomstack:latest" --rm .

    * Run container:
        docker run -p 3080:8080 --rm "marlin/geoserver-2.16-jdk-8-zoomstack:latest"

    * Open your browser on the layer zoomstack:

        http://localhost:3080/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&layers=zoomstack&bbox=5517.69%2C5177.23%2C655672.166150275%2C1220308.96&width=1000&height=800&srs=EPSG%3A27700&format=application/openlayers#toggle

Enjoy great England maps from OrdnanceSurvey !

