public class ExampleRESTCallout {
    public static String makeCallout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.balldontlie.io/api/v1/games/38');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            Map<String,Object> respMap = (Map<String,Object>)
                JSON.deserializeUntyped(response.getBody());
            Map<String,Object> homeTeamMap = (Map<String,Object>)
                respMap.get('home_team');
            Map<String,Object> awayTeamMap = (Map<String,Object>)
                respMap.get('visitor_team');

            Date gameDate = Date.valueOf(String.valueOf(respMap.get('date')));
            String homeTeamName = String.valueOf(homeTeamMap.get('full_name'));
            String awayTeamName = String.valueOf(awayTeamMap.get('full_name'));
            Integer homeTeamScore =
                Integer.valueOf(respMap.get('home_team_score'));
            Integer awayTeamScore =
                Integer.valueOf(respMap.get('visitor_team_score'));
            String winningTeam, losingTeam;
            Integer winningScore, losingScore;

            if(homeTeamScore > awayTeamScore){
                winningTeam = homeTeamName;
                losingTeam = awayTeamName;
                winningScore = homeTeamScore;
                losingScore = awayTeamScore;
            }
            else{
                winningTeam = awayTeamName;
                losingTeam = homeTeamName;
                winningScore = awayTeamScore;
                losingScore = homeTeamScore;
            }
            String gameInfo = 'On ' + gameDate.month() + '/' + gameDate.day() +
                '/' + gameDate.year() + ', the ' + winningTeam +
                ' beat the ' + losingTeam + ' by a score of ' + winningScore +
                ' to ' + losingScore + ' in ' +
                String.valueOf(homeTeamMap.get('city')) + '.';
            return gameInfo;
        }
        return null;
    }
}