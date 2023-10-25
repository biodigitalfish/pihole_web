<?
--[[
*  Pi-hole: A black hole for Internet advertisements
*  (c) 2023 Pi-hole, LLC (https://pi-hole.net)
*  Network-wide ad blocking via your own hardware.
*
*  This file is copyright under the latest version of the EUPL.
*  Please see LICENSE file for your rights under this license.
--]]

mg.include('scripts/pi-hole/lua/header_authenticated.lp','r')

-- default tab = system
tabname = GET("tab") or "system"
?>

<!-- Level selector -->
<div class="settings-selector">
    Settings level: <select id="settings-level" class="form-control input-sm"></select>
</div>

<!-- Tabs container -->
<div class="nav-tabs-custom settings-tabs">
    <ul class="nav nav-tabs" style="display: flex;flex-wrap: wrap-reverse;">
        <li class="<? if tabname == 'system' then ?> active<? end ?>">
            <a href="#system" aria-controls="system" aria-expanded="true" role="tab" data-toggle="tab">System</a>
        </li>
        <li class="<? if tabname == 'dns' then ?> active<? end ?>">
            <a href="#dns" aria-controls="dns" role="tab" data-toggle="tab">DNS</a>
        </li>
        <li class="<? if tabname == 'dhcp' then ?> active<? end ?>">
            <a href="#dhcp" aria-controls="dhcp" role="tab" data-toggle="tab">DHCP</a>
        </li>
        <li class="<? if tabname == 'api' then ?> active<? end ?>">
            <a href="#api" aria-controls="api" role="tab" data-toggle="tab">Web interface / API</a>
        </li>
        <li class="<? if tabname == 'privacy' then ?> active<? end ?>">
            <a href="#privacy" aria-controls="privacy" role="tab" data-toggle="tab">Privacy</a>
        </li>
        <li class="<? if tabname == 'teleporter' then ?> active<? end ?>">
            <a href="#teleporter" aria-controls="teleporter" role="tab" data-toggle="tab">Teleporter</a>
        </li>
        <li class="<? if tabname == 'dnsrecords' then ?> active<? end ?> settings-level-1">
            <a href="#dnsrecords" aria-controls="dnsrecords" role="tab" data-toggle="tab">Local DNS Records</a>
        </li>
        <li class="<? if tabname == 'advanced' then ?> active<? end ?> settings-level-2">
            <a href="#advanced" aria-controls="advanced" data-toggle="tab">All settings</a>
        </li>
    </ul>
    <div class="tab-content">
        <div id="system" class="tab-pane fade<? if tabname == 'system' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-system.lp','r') ?></div>
        <div id="dns" class="tab-pane fade<? if tabname == 'dns' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-dns.lp','r') ?></div>
        <div id="dhcp" class="tab-pane fade<? if tabname == 'dhcp' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-dhcp.lp','r') ?></div>
        <div id="api" class="tab-pane fade<? if tabname == 'api' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-api.lp','r') ?></div>
        <div id="privacy" class="tab-pane fade<? if tabname == 'privacy' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-privacy.lp','r') ?></div>
        <div id="teleporter" class="tab-pane fade<? if tabname == 'teleporter' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-teleporter.lp','r') ?></div>
        <div id="dnsrecords" class="tab-pane fade<? if tabname == 'dnsrecords' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-dnsrecords.lp','r') ?></div>
        <div id="advanced" class="tab-pane fade<? if tabname == 'advanced' then ?> in active<? end ?>"><? mg.include('scripts/pi-hole/lua/settings-advanced.lp','r') ?></div>
    </div>
</div>
<script src="<?=pihole.fileversion('scripts/pi-hole/js/settings.js')?>"></script>

<? mg.include('scripts/pi-hole/lua/footer.lp','r')?>
