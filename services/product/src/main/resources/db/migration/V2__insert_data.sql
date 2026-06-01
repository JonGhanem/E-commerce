-- ====================================================================
-- 1. INSERT ALL CATEGORIES
-- ====================================================================
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Computer Keyboards', 'Keyboards');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Computer Monitors', 'Monitors');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Display Screens', 'Screens');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Computer Mice', 'Mice');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Computer Accessories', 'Accessories');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Audio Equipment and Headsets', 'Audio');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'External Storage Devices', 'Storage');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Network and Connectivity Hardware', 'Networking');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Streaming and Content Creation Gear', 'Streaming');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Internal PC Components', 'Components');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Office Furniture and Ergonomics', 'Furniture');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Power Backup and Protection Solutions', 'Power');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Printers, Scanners and Imaging', 'Printers');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Virtual Reality and Simulation Gear', 'VR Gear');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Device Maintenance and Cable Management', 'Maintenance');


-- Assuming you already have a sequence named 'product_seq'

-- ====================================================================
-- 2. INSERT ALL PRODUCTS
-- ====================================================================

-- Insert products for the 'Keyboards' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 10, 'Mechanical keyboard with RGB lighting', 'Mechanical Keyboard 1', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 15, 'Wireless compact keyboard', 'Wireless Compact Keyboard 1', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 20, 'Backlit gaming keyboard with customizable keys', 'Gaming Keyboard 1', 129.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 25, 'Mechanical keyboard with wrist rest', 'Ergonomic Keyboard 1', 109.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 18, 'Wireless keyboard and mouse combo', 'Wireless Combo 1', 69.99, (SELECT id FROM category WHERE name = 'Keyboards'));

-- Insert products for the 'Monitors' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 30, '27-inch IPS monitor with 4K resolution', '4K Monitor 1', 399.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, 'Ultra-wide gaming monitor with HDR support', 'Ultra-wide Gaming Monitor 1', 499.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 22, '24-inch LED monitor for office use', 'Office Monitor 1', 179.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, '32-inch curved monitor with AMD FreeSync', 'Curved Monitor 1', 329.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 35, 'Portable USB-C monitor for laptops', 'Portable Monitor 1', 249.99, (SELECT id FROM category WHERE name = 'Monitors'));

-- Insert products for the 'Screens' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 15, 'Curved OLED gaming screen with 240Hz refresh rate', 'Curved OLED Gaming Screen 1', 799.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 18, 'Flat QLED monitor with 1440p resolution', 'QLED Monitor 1', 599.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 22, '27-inch touch screen display for creative work', 'Touch Screen Display 1', 699.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, 'Ultra-slim 4K HDR display for multimedia', 'Ultra-slim 4K HDR Display 1', 449.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Gaming projector with low input lag', 'Gaming Projector 1', 899.99, (SELECT id FROM category WHERE name = 'Screens'));

-- Insert products for the 'Mice' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 30, 'Wireless gaming mouse with customizable RGB lighting', 'RGB Gaming Mouse 1', 59.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 28, 'Ergonomic wired mouse for productivity', 'Ergonomic Wired Mouse 1', 29.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 32, 'Ambidextrous gaming mouse with high DPI', 'Ambidextrous Gaming Mouse 1', 69.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 26, 'Travel-sized compact mouse for laptops', 'Travel Mouse 1', 19.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 35, 'Vertical ergonomic mouse for reduced strain', 'Vertical Ergonomic Mouse 1', 39.99, (SELECT id FROM category WHERE name = 'Mice'));

-- Insert products for the 'Accessories' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 25, 'Adjustable laptop stand with cooling fan', 'Adjustable Laptop Stand 1', 34.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 20, 'Wireless charging pad for smartphones', 'Wireless Charging Pad 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 28, 'Gaming headset stand with RGB lighting', 'RGB Headset Stand 1', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'Bluetooth mechanical keypad for tablets', 'Bluetooth Keypad 1', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'External hard drive enclosure with USB-C', 'External Hard Drive Enclosure 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories'));

-- Insert products for the 'Audio' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 15, 'Wireless noise-canceling over-ear headphones', 'ANC Headphones 1', 199.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 25, 'True wireless earbuds with charging case', 'Wireless Earbuds 1', 89.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 20, 'Wired gaming headset with 7.1 surround sound', 'Surround Gaming Headset 1', 79.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 12, 'Compact desktop soundbar with Bluetooth', 'Desktop Soundbar 1', 59.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 8, 'Studio monitor speakers for audio production', 'Studio Speakers 1', 249.99, (SELECT id FROM category WHERE name = 'Audio'));

-- Insert products for the 'Storage' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 40, '1TB portable external SSD NVMe', 'Portable SSD 1TB', 119.99, (SELECT id FROM category WHERE name = 'Storage')),
    (nextval('product_seq'), 30, '2TB external hard drive for backups', 'External HDD 2TB', 69.99, (SELECT id FROM category WHERE name = 'Storage')),
    (nextval('product_seq'), 50, '128GB high-speed USB 3.2 flash drive', 'USB Flash Drive 128GB', 19.99, (SELECT id FROM category WHERE name = 'Storage')),
    (nextval('product_seq'), 15, '4-Bay network attached storage (NAS) enclosure', 'NAS Enclosure 4-Bay', 349.99, (SELECT id FROM category WHERE name = 'Storage')),
    (nextval('product_seq'), 35, '256GB MicroSDXC memory card with adapter', 'MicroSD Card 256GB', 29.99, (SELECT id FROM category WHERE name = 'Storage'));

-- Insert products for the 'Networking' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 22, 'Wi-Fi 6 dual-band gigabit router', 'Wi-Fi 6 Router 1', 129.99, (SELECT id FROM category WHERE name = 'Networking')),
    (nextval('product_seq'), 18, 'Whole-home mesh Wi-Fi system (3-pack)', 'Mesh Wi-Fi System 1', 219.99, (SELECT id FROM category WHERE name = 'Networking')),
    (nextval('product_seq'), 30, '8-Port gigabit ethernet unmanaged switch', 'Gigabit Switch 8-Port', 24.99, (SELECT id FROM category WHERE name = 'Networking')),
    (nextval('product_seq'), 25, 'USB-C to dual HDMI and ethernet adapter', 'Multiport Adapter 1', 45.00, (SELECT id FROM category WHERE name = 'Networking')),
    (nextval('product_seq'), 15, 'Long-range outdoor wireless access point', 'Outdoor Access Point 1', 89.99, (SELECT id FROM category WHERE name = 'Networking'));

-- Insert products for the 'Streaming' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 14, '4K ultra-HD webcam with built-in ring light', '4K Streaming Webcam 1', 149.99, (SELECT id FROM category WHERE name = 'Streaming')),
    (nextval('product_seq'), 20, 'Cardioid condenser USB microphone for podcasting', 'USB Podcasting Mic 1', 99.99, (SELECT id FROM category WHERE name = 'Streaming')),
    (nextval('product_seq'), 10, 'External PCIe capture card 4K 60fps', '4K Video Capture Card 1', 179.99, (SELECT id FROM category WHERE name = 'Streaming')),
    (nextval('product_seq'), 30, 'Dimmable LED desk ring light with tripod stand', 'Desk Ring Light 1', 39.99, (SELECT id FROM category WHERE name = 'Streaming')),
    (nextval('product_seq'), 15, 'Customizable macro pad stream controller', 'Stream Control Pad 1', 139.99, (SELECT id FROM category WHERE name = 'Streaming'));

-- Insert products for the 'Components' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 12, '1TB NVMe M.2 PCIe Gen4 internal SSD', 'NVMe M.2 SSD 1TB', 94.99, (SELECT id FROM category WHERE name = 'Components')),
    (nextval('product_seq'), 16, '32GB DDR5 desktop memory kit (2 x 16GB)', 'DDR5 RAM Kit 32GB', 109.99, (SELECT id FROM category WHERE name = 'Components')),
    (nextval('product_seq'), 8, '850W ATX 3.0 fully modular power supply unit', '850W Modular PSU 1', 124.99, (SELECT id FROM category WHERE name = 'Components')),
    (nextval('product_seq'), 10, 'All-in-one liquid CPU cooler with 240mm radiator', 'AIO Liquid CPU Cooler 1', 89.99, (SELECT id FROM category WHERE name = 'Components')),
    (nextval('product_seq'), 15, 'ATX mid-tower PC case with tempered glass panel', 'Mid-Tower PC Case 1', 79.99, (SELECT id FROM category WHERE name = 'Components'));

-- Insert products for the 'Furniture' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 10, 'Ergonomic high-back mesh office chair', 'Ergonomic Chair 1', 249.99, (SELECT id FROM category WHERE name = 'Furniture')),
    (nextval('product_seq'), 5, 'Electric dual-motor standing desk frame', 'Adjustable Standing Desk 1', 329.99, (SELECT id FROM category WHERE name = 'Furniture')),
    (nextval('product_seq'), 15, 'Anti-fatigue standing desk floor mat', 'Ergonomic Desk Mat 1', 39.99, (SELECT id FROM category WHERE name = 'Furniture')),
    (nextval('product_seq'), 12, 'Adjustable dual monitor desk mount arm', 'Dual Monitor Arm 1', 69.99, (SELECT id FROM category WHERE name = 'Furniture')),
    (nextval('product_seq'), 20, 'Under-desk memory foam footrest cushion', 'Ergonomic Footrest 1', 24.99, (SELECT id FROM category WHERE name = 'Furniture'));

-- Insert products for the 'Power' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 15, '1500VA battery backup uninterruptible power supply', 'UPS Battery Backup 1500VA', 169.99, (SELECT id FROM category WHERE name = 'Power')),
    (nextval('product_seq'), 25, '12-Outlet surge protector strip with USB ports', 'Surge Protector 12-Outlet', 29.99, (SELECT id FROM category WHERE name = 'Power')),
    (nextval('product_seq'), 8, 'Sine wave smart line-interactive UPS interactive system', 'Pure Sine Wave UPS 1', 259.99, (SELECT id FROM category WHERE name = 'Power')),
    (nextval('product_seq'), 40, 'Heavy duty extension cord 15ft with flat plug', 'Extension Cord 15ft', 14.99, (SELECT id FROM category WHERE name = 'Power')),
    (nextval('product_seq'), 18, 'Smart Wi-Fi energy monitoring power strip', 'Smart Power Strip 1', 34.99, (SELECT id FROM category WHERE name = 'Power'));

-- Insert products for the 'Printers' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 8, 'Wireless monochrome laser printer for home office', 'Laser Printer Mono', 119.99, (SELECT id FROM category WHERE name = 'Printers')),
    (nextval('product_seq'), 12, 'High-resolution flatbed photo and document scanner', 'Flatbed Scanner 1', 89.99, (SELECT id FROM category WHERE name = 'Printers')),
    (nextval('product_seq'), 6, 'All-in-one color inkjet smart tank printer', 'Color Inkjet Printer 1', 299.99, (SELECT id FROM category WHERE name = 'Printers')),
    (nextval('product_seq'), 20, 'High-yield black toner cartridge replacement kit', 'Black Toner Cartridge 1', 49.99, (SELECT id FROM category WHERE name = 'Printers')),
    (nextval('product_seq'), 14, 'Heavy duty auto-feed document shredder 12-sheet', 'Document Shredder 1', 79.99, (SELECT id FROM category WHERE name = 'Printers'));

-- Insert products for the 'VR Gear' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 10, 'All-in-one standalone virtual reality gaming headset', 'VR Headset Standalone 1', 499.99, (SELECT id FROM category WHERE name = 'VR Gear')),
    (nextval('product_seq'), 15, 'Adjustable PC VR link cable high-speed 16ft', 'VR Link Cable 16ft', 29.99, (SELECT id FROM category WHERE name = 'VR Gear')),
    (nextval('product_seq'), 7, 'Force feedback PC racing steering wheel and pedals', 'Racing Wheel Controller 1', 229.99, (SELECT id FROM category WHERE name = 'VR Gear')),
    (nextval('product_seq'), 12, 'Rechargeable wireless VR motion controller pair', 'VR Motion Controllers 1', 89.99, (SELECT id FROM category WHERE name = 'VR Gear')),
    (nextval('product_seq'), 20, 'Silicone face cover pads sweatproof replacement kit', 'VR Face Cover Set', 19.99, (SELECT id FROM category WHERE name = 'VR Gear'));

-- Insert products for the 'Maintenance' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 50, 'Compressed air duster can for electronics cleaning', 'Compressed Air Duster', 7.99, (SELECT id FROM category WHERE name = 'Maintenance')),
    (nextval('product_seq'), 35, 'Microfiber cleaning cloths multi-pack for screens', 'Microfiber Cloths 6-Pack', 11.99, (SELECT id FROM category WHERE name = 'Maintenance')),
    (nextval('product_seq'), 40, 'Hook and loop reusable cable ties 50-piece pack', 'Reusable Cable Ties 50x', 9.99, (SELECT id FROM category WHERE name = 'Maintenance')),
    (nextval('product_seq'), 25, 'Under-desk wire management basket tray organizer', 'Cable Management Tray 1', 21.99, (SELECT id FROM category WHERE name = 'Maintenance')),
    (nextval('product_seq'), 30, 'Anti-static electronics repair tool kit 60-in-1', 'Electronics Precision Tool Kit', 34.99, (SELECT id FROM category WHERE name = 'Maintenance'));