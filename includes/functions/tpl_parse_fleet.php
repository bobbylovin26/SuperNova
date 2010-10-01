<?php

function tpl_parse_fleet($fleet, $index, $user_data = '')
{
  global $lang, $time_now, $user, $pricelist;

  if(!$user_data)
  {
    $user_data = $user;
  }

  if ($fleet['fleet_mess'] == 0 && $fleet['fleet_mission'] == 2)
  {
    $aks = doquery("SELECT * FROM {{aks}} WHERE id={$fleet['fleet_group']}", '', true);
  };

  $return['fleet'] = array(
    'NUMBER'             => $index,

    'ID'                 => $fleet['fleet_id'],
    'OWNER'              => $fleet['fleet_owner'],
    'TARGET_OWNER'       => $fleet['fleet_target_owner'],

    'MESSAGE'            => $fleet['fleet_mess'],
    'MISSION'            => $fleet['fleet_mission'],
    'MISSION_NAME'       => $lang['type_mission'][$fleet['fleet_mission']],
    'ACS'                => $aks['name'],
    'AMOUNT'             => pretty_number($fleet['fleet_amount']),

    'METAL'              => $fleet['fleet_resource_metal'],
    'CRYSTAL'            => $fleet['fleet_resource_crystal'],
    'DEUTERIUM'          => $fleet['fleet_resource_deuterium'],

    'START_TYPE_TEXT_SH' => $lang['sys_planet_type_sh'][$fleet['fleet_start_type']],
    'START_COORDS'       => "[{$fleet['fleet_start_galaxy']}:{$fleet['fleet_start_system']}:{$fleet['fleet_start_planet']}]",
    'START_TIME_TEXT'    => date('d.m.Y H:i:s', $fleet['fleet_end_time']),
    'START_LEFT'         => floor($fleet['fleet_end_time'] + 1 - $time_now),
    'START_URL'          => int_makeCoordinatesLink($fleet, 'fleet_start_', 3),
    'START_NAME'         => $fleet['fleet_start_name'],

    'END_TYPE_TEXT_SH'   => $lang['sys_planet_type_sh'][$fleet['fleet_end_type']],
    'END_COORDS'         => "[{$fleet['fleet_end_galaxy']}:{$fleet['fleet_end_system']}:{$fleet['fleet_end_planet']}]",
    'END_TIME_TEXT'      => date('d.m.Y H:i:s', $fleet['fleet_start_time']),
    'END_LEFT'           => floor($fleet['fleet_start_time'] + 1 - $time_now),
    'END_URL'            => int_makeCoordinatesLink($fleet, 'fleet_end_', 3),
    'END_NAME'           => $fleet['fleet_end_name'],

    'STAY_TIME'          => date('d.m.Y H:i:s', $fleet['fleet_end_stay']),
    'STAY_LEFT'          => floor($fleet['fleet_end_stay'] + 1 - $time_now),

    'OV_LABEL'           => $fleet['ov_label'],
    'OV_TIME_TEXT'       => date('d.m.Y H:i:s', $fleet['ov_time']),
    'OV_LEFT'            => floor($fleet['ov_time'] + 1 - $time_now),
    'OV_THIS_PLANET'     => $fleet['ov_this_planet'],
  );

  $ship_list = explode(';', $fleet['fleet_array']);
  foreach ($ship_list as $ship_record)
  {
    if ($ship_record)
    {
      $ship_data = explode(',', $ship_record);
      $return['ships'][$ship_data[0]] = array(
        'ID'          => $ship_data[0],
        'NAME'        => $lang['tech'][$ship_data[0]],
        'AMOUNT'      => $ship_data[1],
        'CONSUMPTION' => GetShipConsumption($ship_data[0], $user_data),
        'SPEED'       => get_ship_speed($ship_data[0], $user_data),
        'CAPACITY'    => $pricelist[$ship_data[0]]['capacity'],
      );
    }
  }

  return $return;
}

?>