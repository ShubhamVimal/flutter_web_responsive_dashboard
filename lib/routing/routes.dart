const rootRoute = '/homePage';

const overViewPageDisplayName = 'Overview';
const overViewPageRoute = '/overview';

const driversPageDisplayName = 'Driver';
const driversPageRoute = '/driver';

const clientsPageDisplayName = 'Clients';
const clientsPageRoute = '/clients';

const authenticationPageDisplayName = 'Log Out';
const authenticationPageRoute = '/auth';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(overViewPageDisplayName, overViewPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute)
];
