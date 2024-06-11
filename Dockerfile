# Käytä uusinta Ubuntu-kuvaa pohjana
FROM ubuntu:latest

# Päivitä ja asenna curl
RUN apt-get update && apt-get install -y curl

# Kopioi Bash-skripti konttiin
COPY fetch_website.sh /usr/local/bin/fetch_website.sh

# Anna suoritusoikeudet skriptille
RUN chmod +x /usr/local/bin/fetch_website.sh

# Määritä suoritettava komento, kun kontti käynnistetään
CMD ["/usr/local/bin/fetch_website.sh"]
