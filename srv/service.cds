using {travel as t} from '../db/schema';

 @requires: ['viewer_scope', 'editor_scope']
service travelService {


    entity Employee       as projection on t.Employee;

    entity NationalCities as projection on t.NationalCities;
    @odata.draft.enabled
    entity Travel         as projection on t.Travel; 

}
  
