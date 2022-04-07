-- Copyright (c) 2020 Gitpod GmbH. All rights reserved.
-- Licensed under the MIT License. See License-MIT.txt in the project root for license information.


-- create test DB user
SET @gitpodDbPassword = IFNULL(@gitpodDbPassword, 'test');
source db-init/00-testdb-user.sql;
source db-init/01-create-user.sql;
source db-init/02-create-and-init-sessions-db.sql;
source db-init/03-recreate-gitpod-db.sql;