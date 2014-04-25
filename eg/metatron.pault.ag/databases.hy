(require lenin.language)


(lenin "databases"
  (daemon :name "mongodb"
          :image "paultag/mongodb"
          :volumes ["/srv/leliel.pault.ag/dev/mongodb" "/var/lib/mongodb"]
          :run "/usr/local/bin/paultag-mongodb")

  (daemon :name "postgres"
          :image "paultag/postgres"
          :volumes ["/srv/leliel.pault.ag/dev/postgres/9.3/main"
                    "/var/lib/postgresql/9.3/main"]
          :run "/usr/local/bin/paultag-psqld"))
