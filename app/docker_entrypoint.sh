#!/bin/sh
set -e

function printBanner {
  echo "medi-eco-ilias-user-orchestrator-orbital Copyright (C) 2021 https://medi.ch";
  echo "";
  echo "This program is free software: you can redistribute it and/or modify"
  echo "it under the terms of the GNU General Public License as published"
  echo "by the Free Software Foundation, either version 3 of the License,"
  echo "or (at your option) any later version.";
  echo "";
  echo "This program is distributed in the hope that it will be useful,";
  echo "but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY";
  echo "or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.";
}

function extractMessageDispatcherConfig  {
  flux-eco-installer-orbital.extract-archive-url-to-folder $MEDI_ECO_ILIAS_ORCHESTRATOR_ORBITAL_DISPATCHER_CONFIG_ARCHIVE_PATH $FLUX_ECO_DISPATCHER_SYNAPSE_CONFIG_DIRECTORY_PATH
}

function startServer {
  flux-eco-http-synapse.start
}

function install {
  php /opt/medi-eco-ilias-user-orchestrator-orbital/app/cli/install.php
}

printBanner
extractMessageDispatcherConfig
startServer