# for more details see: http://emberjs.com/guides/models/defining-models/

Matchmup.Demo = DS.Model.extend
  contractorId: DS.attr 'number'
  clientId: DS.attr 'number'
  facilitatorId: DS.attr 'number'
  facilityId: DS.attr 'number'
  aasmState: DS.attr 'string'
