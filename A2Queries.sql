-- 1.a
SELECT * FROM developers;

-- 1.b
SELECT * FROM developers WHERE id=34;

-- 1.c
SELECT DISTINCT developer_id FROM website_roles  WHERE NOT role = 'owner' and website_id = 234;

-- 1.d
SELECT developers.* FROM developers
	JOIN page_roles ON page_roles.developer_id = developers.id
    JOIN pages ON page_roles.page_id = pages.id
    WHERE page_roles.role = 'reviewer'
    AND pages.views < 300000;

-- 1.e
SELECT developers.* FROM developers
	JOIN page_roles ON page_roles.developer_id = developers.id
    JOIN pages ON page_roles.page_id = pages.id
    JOIN widgets ON pages.id = widgets.page_id
    WHERE page_roles.role = 'writer' 
		AND pages.website_id = 567 
        AND pages.title = 'Home' 
        AND widgets.dType='heading';

-- 2.a
SELECT MIN(visits) FROM websites;

-- 2.b
SELECT * FROM websites WHERE id = 678;

-- 2.c
SELECT websites.* FROM websites
	JOIN pages on pages.website_id = websites.id
    JOIN page_roles ON pages.id = page_roles.page_id
    JOIN widgets ON pages.id = widgets.page_id
    WHERE widgets.dType = 'youtube' AND page_roles.role = 'reviewer' AND page_roles.developer_id = '23';
    
-- 2.d
SELECT websites.* FROM websites
	JOIN website_roles on website_roles.website_id = websites.id
    WHERE website_roles.developer_id = 12 AND website_roles.role = 'owner';

-- 2.e
SELECT websites.* FROM websites
	JOIN website_roles on website_roles.website_id = websites.id
    WHERE website_roles.developer_id = 34 AND website_roles.role = 'admin' AND visits > 6000000;


-- 3.a
SELECT DISTINCT title, MAX(views) FROM pages;

-- 3.b
SELECT pages.title FROM pages WHERE id = 234;

-- 3.c
SELECT pages.* FROM pages
	JOIN page_roles ON page_roles.page_id = pages.id
    WHERE page_roles.developer_id = 12 AND page_roles.role = 'editor';

-- 3.d
SELECT DISTINCT title, SUM(visits) FROM pages
	JOIN websites ON pages.website_id = websites.id
    WHERE websites.name = 'CNET';

-- 3.e
SELECT AVG(views) FROM pages
	JOIN websites ON pages.website_id = websites.id
    WHERE websites.name = 'Wikipedia';

-- 4.a
SELECT widgets.* from widgets
	JOIN pages ON pages.id = widgets.page_id
    JOIN websites ON websites.id = pages.website_id
    WHERE websites.name = 'CNET' AND pages.title = 'Home';

-- 4.b
SELECT widgets.* from widgets
	JOIN pages ON pages.id = widgets.page_id
	JOIN websites ON websites.id = pages.website_id
    WHERE widgets.dType = 'youtube' AND websites.name = 'CNN';

-- 4.c
SELECT widgets.* from widgets
	JOIN pages ON pages.id = widgets.page_id
    JOIN page_roles ON page_roles.page_id = pages.id
    WHERE page_roles.developer_id = '12' AND page_roles.role = 'reviewer' AND widgets.dType = 'image';

-- 4.d
SELECT COUNT(*) FROM widgets
	JOIN pages ON pages.id = widgets.page_id
    JOIN websites ON pages.website_id = websites.id
    WHERE websites.name = 'Wikipedia';

-- 5.a
SELECT DISTINCT name FROM websites
	JOIN website_roles ON website_roles.website_id = websites.id
    WHERE website_roles.developer_id = '23' AND website_roles.role = 'admin';
    
-- 5.b
SELECT DISTINCT title FROM pages
	JOIN page_roles ON page_roles.page_id = pages.id
    WHERE page_roles.developer_id = '34' AND (page_roles.role = 'admin' OR page_roles.role = 'writer');