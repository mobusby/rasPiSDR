# rasPiSDR
Raspberry Pi + RTL-SDR = rasPiSDR.

- First step, turn your Raspberry Pi 3 + RTL-SDR into an ADSB gathering/serving machine.

    - Uses the PiBakery recipe to create SD Card.  Be sure to adjust for your network parameters.

    - Requires a network connection -- Pi will download adsbServerSetup.sh on first boot

    - adsbServerSetup.sh will update the Pi's baseline software, download the necessary prerequisite packages, compile the adsb receiver, and setup the adsb info server for first login.  Configure the server at <http://[Pi-IP]:8080/VirtualRadar/WebAdmin/Index.html>

- Two options for viewing ADSB information:
    - <http://[Pi-IP]:8081/> <-- A simple interface with basic aircraft information and a map.
    - <http://[Pi-IP]::8080/> <-- A better interface with more customizability and information
