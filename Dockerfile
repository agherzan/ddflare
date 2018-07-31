FROM linuxserver/ddclient:115

RUN apk add --no-cache git curl wget make
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Data::Validate::IP
RUN git clone https://github.com/ddclient/ddclient.git /ddclient-cloudflare \
	&& cd /ddclient-cloudflare \
	&& git checkout ab706ccae039cc5144c6ef77700285f5c1c4645e \
	&& cp /ddclient-cloudflare/ddclient /usr/bin
