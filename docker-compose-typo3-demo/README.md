# Full running Docker Compose Demo

1. Copy the folder contents (.env_db, .env_t3 and docker-compose.yml) to your project or use the one-liner: 
    
    `wget https://github.com/iocron/docker-typo3/archive/refs/heads/master.zip && unzip -j master.zip '*/docker-compose-typo3-demo/*' && rm -f master.zip`
2. Adjust your .env_db and .env_t3 configuration
3. Run `docker-compose up -d` (where docker-compose.yml is located)
4. Run the TYPO3 Installation process at http://localhost (use "db" as database hostname)
5. Enjoy your finished TYPO3 Installation
