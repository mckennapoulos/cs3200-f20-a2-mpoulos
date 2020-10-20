CREATE VIEW `developer_roles_and_priviledges` AS
    SELECT 
        persons.firstName,
        persons.lastName,
        persons.username,
        persons.email,
        websites.visits,
        websites.name,
        websites.updated,
        website_roles.role
    FROM
        persons
            JOIN
        developers ON persons.id = developers.id
            JOIN
        website_roles ON website_roles.developer_id = developers.id
            JOIN
        websites ON websites.id = website_roles.website_id 
    UNION SELECT 
        persons.firstName,
        persons.lastName,
        persons.username,
        persons.email,
        websites.name,
        websites.visits,
        websites.updated,
        website_priviledges.priviledge
    FROM
        persons
            JOIN
        developers ON persons.id = developers.id
            JOIN
        website_priviledges ON website_priviledges.developer_id = developers.id
            JOIN
        websites ON websites.id = website_priviledges.website_id 
    UNION SELECT 
        persons.firstName,
        persons.lastName,
        persons.username,
        persons.email,
        pages.title,
        pages.views,
        pages.updated,
        page_roles.role
    FROM
        persons
            JOIN
        developers ON persons.id = developers.id
            JOIN
        page_roles ON page_roles.developer_id = developers.id
            JOIN
        pages ON pages.id = page_roles.page_id 
    UNION SELECT 
        persons.firstName,
        persons.lastName,
        persons.username,
        persons.email,
        pages.updated,
        pages.title,
        pages.views,
        page_priviledges.priviledge
    FROM
        persons
            JOIN
        developers ON persons.id = developers.id
            JOIN
        page_priviledges ON page_priviledges.developer_id = developers.id
            JOIN
        pages ON pages.id = page_priviledges.page_id