# Use official acme-dns image
FROM joohoi/acme-dns:latest

# Copy our config
COPY config.cfg /etc/acme-dns/config.cfg

# Use port 80
EXPOSE 80

# Run acme-dns
CMD ["acme-dns", "-c", "/etc/acme-dns/config.cfg"]
