/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	
	('item_horse_brush', 'Horse Brush', 1, 0, 1),	
	('item_apple', 'Apple', 1, 0, 1),
        ('item_fancyapple', 'Fancy Apple', 1, 0, 1),
	('item_turboapple', 'Turbo Apple', 1, 0, 1),
	('item_wildcarrot', 'Wild Carrot', 1, 0, 1),
        ('item_fancycarrot', 'Fancy Carrot', 1, 0, 1),
	('item_turbocarrot', 'Turbo Carrot', 1, 0, 1);

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
