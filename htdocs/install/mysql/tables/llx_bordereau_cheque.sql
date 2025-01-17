-- ===================================================================
-- Copyright (C) 2006 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2009 Regis Houssin        <regis.houssin@inodbox.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.
--
--
-- ===================================================================

--
-- Bordereaux de remise de cheque
--
create table llx_bordereau_cheque
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  ref               varchar(30) NOT NULL,					-- ref
  ref_ext           varchar(255),							-- ref_ext
  type              varchar(6) DEFAULT 'CHQ',              -- 'CHQ', 'TRA', ...
  datec             datetime NOT NULL,
  date_bordereau    date,
  amount            double(24,8) NOT NULL,
  nbcheque          smallint NOT NULL,
  fk_bank_account   integer,
  fk_user_author    integer,
  statut            smallint NOT NULL DEFAULT 0,
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  note              text,
  entity            integer DEFAULT 1 NOT NULL			-- multi company id
)ENGINE=innodb;
