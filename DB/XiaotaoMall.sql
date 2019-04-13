/*
Navicat SQL Server Data Transfer

Source Server         : sa
Source Server Version : 105000
Source Host           : DESKTOP-Q1F5U71\SQLEXPRESS:1433
Source Database       : XiaotaoMall
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2018-07-05 09:48:19
*/


-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE [dbo].[address]
GO
CREATE TABLE [dbo].[address] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_userid] int NULL ,
[_tel] varchar(50) NULL ,
[_mobile] varchar(50) NULL ,
[_address] varchar(150) NULL ,
[_name] varchar(150) NULL ,
[_mail] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[address]', RESEED, 41)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_tel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_tel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_tel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'送货地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'送货地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'收货人姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'收货人姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'address', 
'COLUMN', N'_mail')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮编'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_mail'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮编'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'address'
, @level2type = 'COLUMN', @level2name = N'_mail'
GO

-- ----------------------------
-- Records of address
-- ----------------------------
SET IDENTITY_INSERT [dbo].[address] ON
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'1', N'2', N'325434', N'423423423', N'fsdadf', N'dsfdsfsdfsdfsd', N'34324')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'2', N'17', N'2732675', N'13459463050', N'宁德市1', N'352105', N'王宁杰')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'13', N'19', N'2732675', N'13459463050', N'宁德市', N'王宁辉', N'352105')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'14', N'8', N'2732675', N'13459463050', N'宁德', N'王宁辉', N'352205')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'15', N'9', N'2732675', N'13459463050', N'福建省宁德市', N'王宁辉', N'352105')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'16', N'18', N'86567252', N'13705011717', N'福建省南安市乐风镇**村', N'黄福强', N'362324')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'17', N'20', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'18', N'21', N'13626068079', N'13626068079', N'13626068079', N'张sir', N'362700')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'19', N'22', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'20', N'23', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'21', N'24', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'22', N'25', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'23', N'25', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'24', N'27', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'25', N'29', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'26', N'30', N'123456', N'17878762010', N'北部湾大学城西4-412', N'郭辉', N'525139')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'27', N'31', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'28', N'32', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'29', N'33', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'30', N'34', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'31', N'35', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'32', N'36', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'33', N'37', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'34', N'38', N'123456', N'17878762010', N'北部湾大学城西4-412', N'郭辉', N'525319')
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'35', N'39', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'36', N'40', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'37', N'41', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'38', N'42', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'39', N'43', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'40', N'44', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (N'41', N'45', null, null, null, null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[address] OFF
GO

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE [dbo].[admin]
GO
CREATE TABLE [dbo].[admin] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_name] varchar(50) NULL ,
[_pwd] varchar(100) NULL ,
[_role] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[admin]', RESEED, 24)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'admin', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'admin', 
'COLUMN', N'_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'管理员姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'管理员姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'admin', 
'COLUMN', N'_pwd')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'管理员密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_pwd'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'管理员密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_pwd'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'admin', 
'COLUMN', N'_role')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'管理员角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_role'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'管理员角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'admin'
, @level2type = 'COLUMN', @level2name = N'_role'
GO

-- ----------------------------
-- Records of admin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[admin] ON
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'4', N'guohui', N' 3D24219C061C2DCE', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'6', N'hfq', N'41828B2FFDFDE304 ', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'7', N'wnh', N'41828B2FFDFDE304 ', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'8', N'wwq', N'41828B2FFDFDE304 ', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'9', N'cxj', N'41828B2FFDFDE304 ', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'10', N'hjs', N'41828B2FFDFDE304 ', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'22', N'admin123', N'3D24219C061C2DCE', N'1')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'23', N'啊风', N'3D24219C061C2DCE', N'0')
GO
GO
INSERT INTO [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (N'24', N'admin', N'B4CFF4730F44D2797BD68E5DA2CD0A53', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[admin] OFF
GO

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE [dbo].[article]
GO
CREATE TABLE [dbo].[article] (
[_id] int NOT NULL ,
[name] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO [dbo].[article] ([_id], [name]) VALUES (N'0', N'文章')
GO
GO
INSERT INTO [dbo].[article] ([_id], [name]) VALUES (N'1', N'图文')
GO
GO

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE [dbo].[collect]
GO
CREATE TABLE [dbo].[collect] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_userid] int NULL ,
[_collecttime] datetime NULL DEFAULT (getdate()) ,
[_proid] int NULL ,
[_proname] varchar(50) NULL ,
[_proprice] money NULL ,
[_proimage] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[collect]', RESEED, 75)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_collecttime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'收藏时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_collecttime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'收藏时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_collecttime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_proid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_proname')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proname'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proname'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_proprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'collect', 
'COLUMN', N'_proimage')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proimage'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'collect'
, @level2type = 'COLUMN', @level2name = N'_proimage'
GO

-- ----------------------------
-- Records of collect
-- ----------------------------
SET IDENTITY_INSERT [dbo].[collect] ON
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'1', N'15', N'2010-08-20 20:15:11.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'2', N'15', N'2010-08-20 20:15:41.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'3', N'15', N'2010-08-20 20:39:03.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'4', N'15', N'2010-08-20 20:39:15.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'5', N'15', N'2010-08-20 22:19:09.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'6', N'15', N'2010-08-20 22:19:18.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'7', N'15', N'2010-08-20 22:19:20.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'8', N'15', N'2010-08-20 22:19:33.000', null, null, null, null)
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'69', N'22', N'2010-08-24 17:28:43.000', N'32', N'我俄方二百二十二2', N'5.0000', N'show_imageurl/show_20100824041323194.jpg')
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'70', N'22', N'2010-08-24 17:36:28.000', N'43', N'板鞋', N'22.0000', N'show_imageurl/show_20100824043059007.jpg')
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'71', N'9', N'2010-08-24 21:21:27.000', N'39', N'科比穿过的裤子', N'222.0000', N'show_imageurl/show_20100824042606585.jpg')
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'72', N'29', N'2017-11-11 11:42:31.423', N'44', N'鞋子', N'34.0000', N'show_imageurl/show_20100824043518554.jpg')
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'73', N'30', N'2017-11-12 23:49:04.303', N'50', N'魅蓝6', N'1199.0000', N'show_imageurl/show_20171112114655463.jpg')
GO
GO
INSERT INTO [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (N'75', N'38', N'2017-12-27 11:42:38.773', N'48', N'sony相机', N'1700.0000', N'show_imageurl/show_20171112113907419.jpg')
GO
GO
SET IDENTITY_INSERT [dbo].[collect] OFF
GO

-- ----------------------------
-- Table structure for downlist
-- ----------------------------
DROP TABLE [dbo].[downlist]
GO
CREATE TABLE [dbo].[downlist] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_title] varchar(150) NULL ,
[_size] varchar(50) NULL ,
[_click] int NULL DEFAULT ((0)) ,
[_posttime] datetime NULL DEFAULT (getdate()) ,
[_uploadurl] varchar(200) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[downlist]', RESEED, 19)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'downlist', 
'COLUMN', N'_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'downlist', 
'COLUMN', N'_size')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大小'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_size'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大小'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_size'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'downlist', 
'COLUMN', N'_click')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'点击数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_click'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'点击数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_click'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'downlist', 
'COLUMN', N'_posttime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'发布时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_posttime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'发布时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_posttime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'downlist', 
'COLUMN', N'_uploadurl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'下载路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_uploadurl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'下载路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'downlist'
, @level2type = 'COLUMN', @level2name = N'_uploadurl'
GO

-- ----------------------------
-- Records of downlist
-- ----------------------------
SET IDENTITY_INSERT [dbo].[downlist] ON
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'9', N'O(∩_∩)O哈哈~', N'465.081KB', N'87', N'2010-08-21 15:07:21.000', N'download/index_20100821030707000.rar')
GO
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'15', N'练习', N'1.604KB', N'2', N'2010-08-24 19:43:53.000', N'download/index_20100824074353365.txt')
GO
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'16', N'5图与他人', N'1.604KB', N'3', N'2010-08-24 19:49:18.000', N'download/index_20100824074918646.txt')
GO
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'17', N'二级联动', N'78.728KB', N'1', N'2010-08-24 19:49:41.000', N'download/index_20100824074941881.txt')
GO
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'18', N'gg', N'Label', N'0', N'2010-08-24 20:26:30.000', N'Label')
GO
GO
INSERT INTO [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (N'19', N'gg', N'45KB', N'1', N'2010-08-24 20:26:47.000', N'download/index_20100824082639756.doc')
GO
GO
SET IDENTITY_INSERT [dbo].[downlist] OFF
GO

-- ----------------------------
-- Table structure for fathercate
-- ----------------------------
DROP TABLE [dbo].[fathercate]
GO
CREATE TABLE [dbo].[fathercate] (
[_fathercateid] int NOT NULL IDENTITY(1,1) ,
[_fathername] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[fathercate]', RESEED, 8)
GO

-- ----------------------------
-- Records of fathercate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[fathercate] ON
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'1', N'数码产品')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'2', N'生活用品')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'3', N'学习辅导')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'4', N'代步工具')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'5', N'文具')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'6', N' 精美礼品')
GO
GO
INSERT INTO [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (N'8', N'服装')
GO
GO
SET IDENTITY_INSERT [dbo].[fathercate] OFF
GO

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE [dbo].[help]
GO
CREATE TABLE [dbo].[help] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_title] varchar(50) NULL ,
[_content] varchar(MAX) NULL ,
[_cateid] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[help]', RESEED, 151)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'help', 
'COLUMN', N'_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'help', 
'COLUMN', N'_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'help', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'help'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO

-- ----------------------------
-- Records of help
-- ----------------------------
SET IDENTITY_INSERT [dbo].[help] ON
GO
INSERT INTO [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (N'147', N'怎么进行购物？', N'&nbsp;浏览商品，选择自己喜欢的加入购物车，进行付款填写收货地址即可完成购物！', N'2')
GO
GO
INSERT INTO [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (N'148', N'如何申请售后', N'&nbsp;本网站，支持7天无理由退货，一个月更换货品（特殊货品除外），所有卖家出售的货品保证正品！', N'20')
GO
GO
INSERT INTO [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (N'149', N'公司情况介绍', N'&nbsp;本网站有SmallPal web开发小组开发，是一个以&ldquo;&rdquo;提供最便利的校园购物服务&ldquo;&rdquo;为宗旨的开发小组，部分功能仍在测试，欢迎提交提交bug!', N'21')
GO
GO
INSERT INTO [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (N'150', N'会员有哪些服务？', N'&nbsp;校园淘网实行实名注册，只有会员才能进行购物服务，非会员只能浏览商品。', N'25')
GO
GO
INSERT INTO [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (N'151', N'购物指南', N'&nbsp;选择商品---------------添加购物车---------------进行付款-------------------填写收货地址------------------购物完成', N'26')
GO
GO
SET IDENTITY_INSERT [dbo].[help] OFF
GO

-- ----------------------------
-- Table structure for helpcate
-- ----------------------------
DROP TABLE [dbo].[helpcate]
GO
CREATE TABLE [dbo].[helpcate] (
[_cateid] int NOT NULL IDENTITY(1,1) ,
[_catename] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[helpcate]', RESEED, 26)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'helpcate', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帮助类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'helpcate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帮助类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'helpcate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'helpcate', 
'COLUMN', N'_catename')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帮助类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'helpcate'
, @level2type = 'COLUMN', @level2name = N'_catename'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帮助类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'helpcate'
, @level2type = 'COLUMN', @level2name = N'_catename'
GO

-- ----------------------------
-- Records of helpcate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[helpcate] ON
GO
INSERT INTO [dbo].[helpcate] ([_cateid], [_catename]) VALUES (N'2', N'常见问题')
GO
GO
INSERT INTO [dbo].[helpcate] ([_cateid], [_catename]) VALUES (N'20', N'售后服务')
GO
GO
INSERT INTO [dbo].[helpcate] ([_cateid], [_catename]) VALUES (N'21', N'公司简介')
GO
GO
INSERT INTO [dbo].[helpcate] ([_cateid], [_catename]) VALUES (N'25', N'会员服务')
GO
GO
INSERT INTO [dbo].[helpcate] ([_cateid], [_catename]) VALUES (N'26', N'新手指南')
GO
GO
SET IDENTITY_INSERT [dbo].[helpcate] OFF
GO

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE [dbo].[message]
GO
CREATE TABLE [dbo].[message] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_title] varchar(50) NULL ,
[_content] varchar(250) NULL ,
[_ip] varchar(50) NULL ,
[_posttime] datetime NULL DEFAULT (getdate()) ,
[_reply] varchar(200) NULL ,
[_state] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[message]', RESEED, 46)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'留言内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'留言内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_ip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ip'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_ip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ip'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_ip'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_posttime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'留言时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_posttime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'留言时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_posttime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_reply')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'回复'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_reply'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'回复'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_reply'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'message', 
'COLUMN', N'_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'审核'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'审核'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'message'
, @level2type = 'COLUMN', @level2name = N'_state'
GO

-- ----------------------------
-- Records of message
-- ----------------------------
SET IDENTITY_INSERT [dbo].[message] ON
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'1', N'沙发', N'哇，这个商城的东西好丰富', N'127.0.0.1', N'2017-11-21 16:03:44.000', N'我们会继续增加我们丰富的商品的', N'1')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'2', N'打酱油来咯', N'这个商城还是不错的么，品种丰富，价格便宜', N'127.0.0.1', N'2017-12-21 16:40:30.000', N'谢谢，欢迎光临', N'1')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'8', N'瞎逛来了``', N'没事来看看有没有便宜的东西', N'127.0.0.1', N'2017-10-21 21:08:10.000', N'自己到商城去看看不就知道了吗？', N'1')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'9', N'为什么没有自行车卖？', N'想要一辆八成新代步车', N'127.0.0.1', N'2017-11-21 21:37:02.000', N'亲，自行车即将上架', N'1')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'20', N'有女朋友吗？', N'想要一个女朋友，不知道可以介绍吗', N'127.0.0.1', N'2017-12-25 21:54:13.000', N'没有，亲！', N'0')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'21', N'有后悔药吗？', N'曾今有一份爱情摆在我的面前...', N'127.0.0.1', N'2017-11-18 21:54:31.000', N'亲，我们会努力为你找的', N'1')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'26', N'复古风', N'我要古装衣服？有吗？管理大大', N'127.0.0.1', N'2017-12-21 22:10:11.000', N'好的，尽快为你找', N'0')
GO
GO
INSERT INTO [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (N'46', N'发生的法定税费', N'暗示大师大师的', N'::1', N'2017-11-24 20:14:23.407', null, N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[message] OFF
GO

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE [dbo].[news]
GO
CREATE TABLE [dbo].[news] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_title] varchar(150) NULL ,
[_from] varchar(50) NULL ,
[_author] varchar(50) NULL ,
[_top] int NULL DEFAULT ((0)) ,
[_click] int NULL DEFAULT ((0)) ,
[_content] varchar(MAX) NULL ,
[_posttime] datetime NULL DEFAULT (getdate()) ,
[_cateid] int NULL ,
[_ispic] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[news]', RESEED, 129)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_from')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_from'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_from'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_author')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_author'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_author'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_top')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_top'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_top'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_click')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'点击数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_click'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'点击数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_click'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_posttime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'发布时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_posttime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'发布时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_posttime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'news', 
'COLUMN', N'_ispic')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否图文'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_ispic'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否图文'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'news'
, @level2type = 'COLUMN', @level2name = N'_ispic'
GO

-- ----------------------------
-- Records of news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[news] ON
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'26', N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'校淘网', N'ace', N'0', N'15', N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', N'2017-12-20 01:26:27.000', N'18', N'0')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'27', N'公安部原副局长相怀珠不满获刑12年判决上诉', N'校淘网', N'ace', N'0', N'13', N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', N'2017-12-20 01:27:15.000', N'22', N'1')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'30', N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'校淘网', N'ace', N'0', N'6', N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', N'2017-11-20 01:27:41.000', N'20', N'0')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'32', N'公安部原副局长相怀珠不满获刑12年判决上诉', N'校淘网', N'ace', N'0', N'4', N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', N'2017-12-20 01:27:41.000', N'20', N'0')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'125', N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'校淘网', N'ace', N'0', N'7', N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', N'2017-12-23 10:07:41.000', null, N'0')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'128', N'贾跃亭再次上"老赖名单"：一旦回国恐再难出境', N'证券日报(北京)', N'贾丽', N'0', N'3', N'&nbsp;<span style="color: rgb(64, 64, 64); font-family: &quot;Microsoft Yahei&quot;; font-size: 18px; text-align: justify; text-indent: 2em;">12月12日，有消息称，贾跃亭首次被某地法院出具&ldquo;限制消费令&rdquo;。法令规定，贾跃亭今后乘坐交通工具时不得选择飞机、列车软卧、轮船二等舱以上舱位，同时不得在星级以上酒店、高尔夫球场等场所进行高消费，不得购买不动产和租赁高档写字楼以及进行旅游、度假等消费行为。</span>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">法令显示，该事件要追溯到今年9月份，与贾跃亭有债务纠纷的华福证券申请贾跃亭公正债权文书，不过贾跃亭至今未执行生效法律文书确定的给付义务。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">对此，乐视控股相关负责人并未正面回应。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">不过，对于将在国内受到限制，贾跃亭或已有心理准备。此前，贾跃亭接受媒体采访时曾透露，自己有回国计划的时间点，但目前的首要任务是完成法拉第未来的A轮融资，所以暂时还不会回国。&ldquo;一旦回了国，恐怕就出不来了。&rdquo;</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;"><b>不得买房和租赁办公场所</b></p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;"><b>回国遥遥无期</b></p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">目前看来，贾跃亭回国时间还遥遥无期。今年7月份前后，外界还不断传出&ldquo;贾跃亭将回国&rdquo;的消息，近几个月则再无消息。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">香颂资本执行董事沈萌表示：&ldquo;此次贾跃亭被法院要求不得购买不动产，就是指其在中国不可以购买住宅、商铺、写字楼等，同时也不可以进行高端消费。目前贾跃亭人在美国，只要一回国，其将受到严格限制。&rdquo;</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">有业内人士认为：&ldquo;法院对贾跃亭限制后，他在中国的商业经营等行为将受到严重影响，甚至不可以直接给自己的公司租赁办公地。如此一来，贾跃亭更不会轻易回到国内。&rdquo;</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">根据《中国公民出入境管理法》第八条规定，人民法院通知有未了民事案件的不被批准出境，目前贾跃亭已经被法院列入老赖名单。如若贾跃亭的一系列诉讼案件未能得到解决，在回国之后其或将无法再次出境，这样一来法拉第将无人管理。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">在此之前，贾跃亭也引发了证监会的关注。乐视网近日发布公告称，公司收到中国证券监督管理委员会北京监管局对贾跃亭和贾跃芳下发的《关于对贾跃亭采取责令改正行政监管措施的决定》和《关于对贾跃芳采取责令改正行政监管措施的决定》。同时，贾跃亭作为大股东的乐视控股也被纳入失信执行人名单。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">消息称，此次贾跃亭被法院出具&ldquo;限制消费令&rdquo;主要源于华福证券与贾跃亭的纠纷。截至2016年11月12日，贾跃亭对外已质押股票数量为5.6607亿股，融资总额为116.14亿元，涉及15家金融机构，华福证券在列。而这些股权质押融资到期日集中在2017年。</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">一位接近乐视人士表示：&ldquo;华福证券是向贾跃亭追债的金融机构之一，随着其股权质押的融资到期，如若贾跃亭无法及时还款，他还将受到其他机构的债务追偿。&rdquo;</p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;"><b>责令贾跃亭改正</b></p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;"><b>证监会首度发声</b></p>
<p style="margin: 32px 0px 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify;">公告显示，贾跃亭早在两年前作出承诺，将减持乐视网股票所得资金全部借给上市公司作为运营资金使用，免收利息。不过，在上个月，贾跃亭已明确表示无力继续履行对上市公司无息借款的承诺。贾跃亭在上市公司经营困难之际抽回全部借款，拒绝履行承诺。</p>', N'2017-12-26 15:26:15.467', N'21', N'0')
GO
GO
INSERT INTO [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (N'129', N'"需要让座请叫我",这个睡着的小哥好可爱', N'东方头条', N'小明', N'1', N'2', N'&nbsp;<span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 16px; text-indent: 32px;">近日，武汉地铁4号线上一名年轻男子睡着后，手中握的手机屏幕上打下了这几个字：&ldquo;需要让座请叫我&rdquo;。他的这一举动，被其他乘客拍下上传到网上，迅速得到传播，不到两天时间，视频浏览量已超过1900万。</span>
<p style="margin: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; text-indent: 32px;">　　25日上午，楚天都市报记者在视频中看到，年轻男子穿着时尚，坐在地铁车厢一排座位靠近车门的位置，头上蒙着外套的帽子，已经睡着。双手握着的手机放在他的腿前，手机屏幕上一串字幕来回播放：需要让座请叫我。</p>', N'2017-12-26 15:28:30.903', N'18', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[news] OFF
GO

-- ----------------------------
-- Table structure for newscate
-- ----------------------------
DROP TABLE [dbo].[newscate]
GO
CREATE TABLE [dbo].[newscate] (
[_cateid] int NOT NULL IDENTITY(1,1) ,
[_catename] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[newscate]', RESEED, 22)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'newscate', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'newscate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'newscate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'newscate', 
'COLUMN', N'_catename')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'newscate'
, @level2type = 'COLUMN', @level2name = N'_catename'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'newscate'
, @level2type = 'COLUMN', @level2name = N'_catename'
GO

-- ----------------------------
-- Records of newscate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[newscate] ON
GO
INSERT INTO [dbo].[newscate] ([_cateid], [_catename]) VALUES (N'18', N'站内新闻')
GO
GO
INSERT INTO [dbo].[newscate] ([_cateid], [_catename]) VALUES (N'19', N'军事新闻')
GO
GO
INSERT INTO [dbo].[newscate] ([_cateid], [_catename]) VALUES (N'20', N'国际新闻')
GO
GO
INSERT INTO [dbo].[newscate] ([_cateid], [_catename]) VALUES (N'21', N'国内新闻')
GO
GO
INSERT INTO [dbo].[newscate] ([_cateid], [_catename]) VALUES (N'22', N'时尚新闻')
GO
GO
SET IDENTITY_INSERT [dbo].[newscate] OFF
GO

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE [dbo].[orderdetail]
GO
CREATE TABLE [dbo].[orderdetail] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_ordernum] varchar(50) NULL ,
[_count] int NULL ,
[_sumprice] money NULL ,
[_sumweight] varchar(50) NULL ,
[_proid] int NULL ,
[_price] money NULL ,
[_weight] varchar(50) NULL ,
[_title] varchar(50) NULL ,
[_size] varchar(50) NULL ,
[_color] varchar(50) NULL ,
[_proimage] varchar(50) NULL ,
[_cate] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[orderdetail]', RESEED, 97)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'orderdetail', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'orderdetail', 
'COLUMN', N'_count')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'购买数量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_count'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'购买数量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_count'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'orderdetail', 
'COLUMN', N'_sumprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'总价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_sumprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'总价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_sumprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'orderdetail', 
'COLUMN', N'_sumweight')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'总重'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_sumweight'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'总重'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_sumweight'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'orderdetail', 
'COLUMN', N'_proid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_proid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'orderdetail'
, @level2type = 'COLUMN', @level2name = N'_proid'
GO

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[orderdetail] ON
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'71', N'20171118113421083', N'1', N'18.0000', N'50', N'53', N'18.0000', N'50', N'纯棉毛巾', null, null, N'show_imageurl/show_20171118104822577.jpg', N'新品毛巾')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'72', N'20171118080239413', N'1', N'5500.0000', N'500', N'49', N'5500.0000', N'500', N'尼康相机', null, null, N'show_imageurl/show_20171112114056365.jpg', N'单反相机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'73', N'20171118083135384', N'1', N'100.0000', N'100', N'47', N'100.0000', N'100', N'新品HelloKitty', null, null, N'show_imageurl/show_20171112113724611.jpg', N'精美娃娃')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'74', N'20171118084120089', N'1', N'5350.0000', N'400', N'54', N'5350.0000', N'400', N'iphone7', null, null, N'show_imageurl/show_20171118123722081.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'75', N'20171118084437142', N'1', N'3000.0000', N'500', N'51', N'3000.0000', N'500', N'iphone6', null, null, N'show_imageurl/show_20171118104425898.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'76', N'20171118112743623', N'1', N'1199.0000', N'250', N'50', N'1199.0000', N'250', N'魅蓝6', null, null, N'show_imageurl/show_20171112114655463.jpg', N'手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'77', N'20171118112743623', N'1', N'5500.0000', N'500', N'49', N'5500.0000', N'500', N'尼康相机', null, null, N'show_imageurl/show_20171112114056365.jpg', N'单反相机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'78', N'20171119104642359', N'1', N'2499.0000', N'500', N'55', N'2499.0000', N'500', N'小米6', null, null, N'show_imageurl/show_20171118124041916.jpg', N'手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'79', N'20171119104756143', N'1', N'1199.0000', N'250', N'50', N'1199.0000', N'250', N'魅蓝6', null, null, N'show_imageurl/show_20171112114655463.jpg', N'手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'80', N'20171119113404057', N'1', N'2499.0000', N'500', N'55', N'2499.0000', N'500', N'小米6', null, null, N'show_imageurl/show_20171118124041916.jpg', N'手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'81', N'20171121042951228', N'1', N'5350.0000', N'400', N'54', N'5350.0000', N'400', N'iphone7', null, null, N'show_imageurl/show_20171118123722081.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'82', N'20171121043013655', N'1', N'1700.0000', N'500', N'48', N'1700.0000', N'500', N'sony相机', null, null, N'show_imageurl/show_20171112113907419.jpg', N'单反相机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'83', N'20171121044617922', N'1', N'18.0000', N'50', N'53', N'18.0000', N'50', N'纯棉毛巾', null, null, N'show_imageurl/show_20171118104822577.jpg', N'新品毛巾')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'84', N'20171121044631477', N'1', N'5350.0000', N'400', N'54', N'5350.0000', N'400', N'iphone7', null, null, N'show_imageurl/show_20171118123722081.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'85', N'20171121044642680', N'1', N'4000.0000', N'105', N'46', N'4000.0000', N'105', N'尼康9900', null, null, N'show_imageurl/show_20171112082745655.jpg', N'单反相机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'86', N'20171122085508731', N'1', N'18.0000', N'50', N'53', N'18.0000', N'50', N'纯棉毛巾', null, null, N'show_imageurl/show_20171118104822577.jpg', N'新品毛巾')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'87', N'20171214020830203', N'1', N'5350.0000', N'400', N'54', N'5350.0000', N'400', N'iphone7', null, null, N'show_imageurl/show_20171118123722081.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'88', N'20171226082351289', N'1', N'8700.0000', N'700', N'52', N'8700.0000', N'700', N'iphone8', null, null, N'show_imageurl/show_20171118104629065.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'89', N'20171226083548495', N'1', N'100.0000', N'100', N'47', N'100.0000', N'100', N'新品HelloKitty', null, null, N'show_imageurl/show_20171112113724611.jpg', N'精美娃娃')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'90', N'20171226083638976', N'1', N'100.0000', N'100', N'47', N'100.0000', N'100', N'新品HelloKitty', null, null, N'show_imageurl/show_20171112113724611.jpg', N'精美娃娃')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'91', N'20171226084414599', N'1', N'5350.0000', N'400', N'54', N'5350.0000', N'400', N'iphone7', null, null, N'show_imageurl/show_20171118123722081.jpg', N'苹果')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'92', N'20171226084657511', N'1', N'18.0000', N'50', N'53', N'18.0000', N'50', N'纯棉毛巾', null, null, N'show_imageurl/show_20171118104822577.jpg', N'新品毛巾')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'93', N'20171227094907833', N'1', N'3000.0000', N'500', N'51', N'3000.0000', N'500', N'iphone6', null, null, N'show_imageurl/show_20171118104425898.jpg', N'苹果手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'94', N'20180102050716265', N'1', N'30.0000', N'50', N'56', N'30.0000', N'50', N'情侣小风扇', null, null, N'show_imageurl/show_20171227020544514.jpg', N'生日礼物')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'95', N'20180102073907141', N'1', N'2499.0000', N'500', N'55', N'2499.0000', N'500', N'小米6', null, null, N'show_imageurl/show_20171118124041916.jpg', N'手机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'96', N'20180119063346882', N'1', N'5500.0000', N'500', N'49', N'5500.0000', N'500', N'尼康相机', null, null, N'show_imageurl/show_20171112114056365.jpg', N'单反相机')
GO
GO
INSERT INTO [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (N'97', N'20180119063346882', N'1', N'30.0000', N'50', N'56', N'30.0000', N'50', N'情侣小风扇', null, null, N'show_imageurl/show_20171227020544514.jpg', N'生日礼物')
GO
GO
SET IDENTITY_INSERT [dbo].[orderdetail] OFF
GO

-- ----------------------------
-- Table structure for ordertable
-- ----------------------------
DROP TABLE [dbo].[ordertable]
GO
CREATE TABLE [dbo].[ordertable] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_ordernum] varchar(50) NULL ,
[_paystate] int NULL DEFAULT ((0)) ,
[_prostate] int NULL DEFAULT ((0)) ,
[_userid] int NULL ,
[_ordertime] datetime NULL DEFAULT (getdate()) ,
[_sellremarks] varchar(350) NULL ,
[_buyremarks] varchar(350) NULL ,
[_count] int NULL ,
[_address] varchar(150) NULL ,
[_sumprice] money NULL ,
[_tel] varchar(50) NULL ,
[_mobile] varchar(50) NULL ,
[_name] varchar(50) NULL ,
[_mail] varchar(50) NULL ,
[_needbill] int NULL DEFAULT ((0)) ,
[_waysgive] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[ordertable]', RESEED, 103)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_ordernum')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_ordernum'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_ordernum'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_paystate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'付款状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_paystate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'付款状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_paystate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_prostate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'发货状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_prostate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'发货状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_prostate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_ordertime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_ordertime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_ordertime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_sellremarks')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'卖家备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_sellremarks'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'卖家备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_sellremarks'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_buyremarks')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'买家备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_buyremarks'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'买家备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_buyremarks'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_count')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'总项数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_count'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'总项数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_count'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地址id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地址id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_sumprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'总价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_sumprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'总价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_sumprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_tel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_tel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_tel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'收获人姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'收获人姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ordertable', 
'COLUMN', N'_mail')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮编'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_mail'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮编'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ordertable'
, @level2type = 'COLUMN', @level2name = N'_mail'
GO

-- ----------------------------
-- Records of ordertable
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ordertable] ON
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'83', N'20171118084437142', N'1', N'1', N'30', N'2017-11-18 20:44:39.423', null, N'', N'1', N'北部湾大学城西4-412', N'3000.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'84', N'20171119104642359', N'1', N'1', N'30', N'2017-11-19 10:46:47.490', null, N'', N'1', N'北部湾大学城西4-412', N'2499.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'85', N'20171119113404057', N'1', N'1', N'30', N'2017-11-19 11:34:04.103', null, N'', N'1', N'北部湾大学城西4-412', N'2499.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'86', N'20171121042951228', N'1', N'1', N'30', N'2017-11-21 16:29:51.300', null, N'', N'1', N'北部湾大学城西4-412', N'5350.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'87', N'20171121043013655', N'1', N'0', N'30', N'2017-11-21 16:30:13.653', null, N'', N'1', N'北部湾大学城西4-412', N'1700.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'89', N'20171121044631477', N'0', N'0', N'30', N'2017-11-21 16:46:31.477', null, N'', N'1', N'北部湾大学城西4-412', N'5350.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'90', N'20171121044642680', N'0', N'1', N'30', N'2017-11-21 16:46:42.680', null, N'', N'1', N'北部湾大学城西4-412', N'4000.0000', N'123456', N'17878762010', N'郭辉', N'525139', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'91', N'20171122085508731', N'1', N'1', N'31', N'2017-11-22 20:55:08.853', null, N'ASDASDSA', N'1', N'ASDASD', N'18.0000', N'232323', N'125256556', N'GUUI', N'265565', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'92', N'20171214020830203', N'1', N'1', N'35', N'2017-12-14 14:08:30.750', N'', N'sdasdas', N'1', N'sadas', N'5350.0000', N'dsad', N'asdas', N'asdas', N'sadadasd', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'93', N'20171226082351289', N'1', N'0', N'38', N'2017-12-26 20:23:51.410', null, N'', N'1', N'北部湾大学城西4-412', N'8700.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'94', N'20171226083548495', N'1', N'0', N'38', N'2017-12-26 20:35:48.520', null, N'', N'1', N'北部湾大学城西4-412', N'100.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'95', N'20171226083611721', N'1', N'0', N'38', N'2017-12-26 20:36:11.720', null, N'', N'1', N'北部湾大学城西4-412', N'100.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'96', N'20171226083615722', N'1', N'1', N'38', N'2017-12-26 20:36:15.723', null, N'', N'1', N'北部湾大学城西4-412', N'100.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'97', N'20171226083638976', N'1', N'1', N'38', N'2017-12-26 20:36:38.977', null, N'', N'1', N'北部湾大学城西4-412', N'100.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'98', N'20171226084414599', N'1', N'1', N'38', N'2017-12-26 20:44:14.607', null, N'', N'1', N'北部湾大学城西4-412', N'5350.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'100', N'20171227094907833', N'1', N'0', N'38', N'2017-12-27 21:49:07.850', null, N'', N'1', N'北部湾大学城西4-412', N'3000.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'101', N'20180102050716265', N'1', N'0', N'38', N'2018-01-02 17:07:16.323', null, N'', N'1', N'北部湾大学城西4-412', N'30.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'102', N'20180102073907141', N'1', N'0', N'38', N'2018-01-02 19:39:07.153', null, N'', N'1', N'北部湾大学城西4-412', N'2499.0000', N'123456', N'17878762010', N'郭辉', N'525319', N'0', N'在线支付')
GO
GO
INSERT INTO [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (N'103', N'20180119063346882', N'1', N'0', N'45', N'2018-01-19 18:33:46.913', null, N'', N'2', N'555555', N'5530.0000', N'1111', N'12345545', N'小明', N'11111', N'0', N'在线支付')
GO
GO
SET IDENTITY_INSERT [dbo].[ordertable] OFF
GO

-- ----------------------------
-- Table structure for procate
-- ----------------------------
DROP TABLE [dbo].[procate]
GO
CREATE TABLE [dbo].[procate] (
[_cateid] int NOT NULL IDENTITY(1,1) ,
[_catename] varchar(50) NULL ,
[_fathercateid] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[procate]', RESEED, 33)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'procate', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'procate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'procate'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'procate', 
'COLUMN', N'_catename')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'procate'
, @level2type = 'COLUMN', @level2name = N'_catename'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品类别名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'procate'
, @level2type = 'COLUMN', @level2name = N'_catename'
GO

-- ----------------------------
-- Records of procate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[procate] ON
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'17', N'新品毛巾', N'2')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'18', N'苹果手机', N'1')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'19', N'笔记本', N'1')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'20', N'单反相机', N'1')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'21', N'公务员辅导书', N'3')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'22', N'计算机二级书籍', N'3')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'23', N'自行车', N'4')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'24', N'太阳眼镜', N'2')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'26', N'生日礼物', N'6')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'32', N'精美娃娃', N'6')
GO
GO
INSERT INTO [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (N'33', N'手机', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[procate] OFF
GO

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE [dbo].[product]
GO
CREATE TABLE [dbo].[product] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_title] varchar(50) NULL ,
[_cateid] int NULL ,
[_marketprice] money NULL ,
[_localprice] money NULL ,
[_content] varchar(MAX) NULL ,
[_posttime] varchar(50) NULL ,
[_weight] varchar(50) NULL DEFAULT ((0)) ,
[_ischeap] int NULL DEFAULT ((0)) ,
[_isrecommend] int NULL DEFAULT ((0)) ,
[_top] int NULL DEFAULT ((0)) ,
[_procount] int NULL ,
[_imageid] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[product]', RESEED, 57)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类别id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_marketprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'市场价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_marketprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'市场价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_marketprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_localprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'本网站价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_localprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'本网站价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_localprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_posttime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'上市时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_posttime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'上市时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_posttime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_weight')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品重量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_weight'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品重量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_weight'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_ischeap')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否特价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_ischeap'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否特价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_ischeap'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_isrecommend')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否推荐'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_isrecommend'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否推荐'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_isrecommend'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_top')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_top'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否置顶'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_top'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'product', 
'COLUMN', N'_procount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'库存量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_procount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'库存量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'product'
, @level2type = 'COLUMN', @level2name = N'_procount'
GO

-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'46', N'尼康9900', N'20', N'5500.0000', N'4000.0000', N'&nbsp;九成新，无磕碰<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/regular_smile.gif" alt="" />', N'2017/11/12 8:28:17', N'105', N'0', N'0', N'1', N'1', N'20171112082558727')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'47', N'新品HelloKitty', N'32', N'130.0000', N'100.0000', N'&nbsp;欢迎购买，本店绝对低价，质量保证', N'2017/11/12 11:38:12', N'100', N'0', N'1', N'1', N'3', N'20171112113610843')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'48', N'sony相机', N'20', N'2000.0000', N'1700.0000', N'&nbsp;自用二手sony相机，欢迎购买<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/shades_smile.gif" alt="" />', N'2017/11/12 11:39:37', N'500', N'1', N'1', N'1', N'2', N'20171112113812249')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'49', N'尼康相机', N'20', N'6000.0000', N'5500.0000', N'&nbsp;尼康单反，9成新，有意请直接拍下', N'2017/11/12 11:41:29', N'500', N'0', N'1', N'1', N'1', N'20171112113937626')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'50', N'魅蓝6', N'33', N'1399.0000', N'1199.0000', N'&nbsp;全新正品魅蓝系列，欢迎购买', N'2017/11/12 11:47:16', N'250', N'1', N'1', N'1', N'2', N'20171112114604268')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'51', N'iphone6', N'18', N'4500.0000', N'3000.0000', N'&nbsp;<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/teeth_smile.gif" alt="" />99新iPhone6，64G版，欢迎拍下，可以小刀！！！QQ：12345678', N'2017/11/18 10:45:40', N'500', N'1', N'1', N'0', N'2', N'20171118104259655')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'52', N'iphone8', N'18', N'8888.0000', N'8700.0000', N'全新Iphone8，库存有限，预购从速！！！！<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/wink_smile.gif" alt="" />', N'2017/11/18 10:47:14', N'700', N'0', N'1', N'1', N'3', N'20171118104540582')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'53', N'纯棉毛巾', N'17', N'25.0000', N'18.0000', N'&nbsp;全新正品纯棉毛巾，欢迎各位同学抢购，绝对比市面价低，舒适的，才是真的纯棉！', N'2017/11/18 10:49:29', N'50', N'0', N'1', N'0', N'100', N'20171118104714242')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'54', N'iphone7', N'18', N'5700.0000', N'5350.0000', N'&nbsp;全新iPhone7，全系列出售！<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/regular_smile.gif" alt="" />', N'2017/11/18 12:37:59', N'400', N'1', N'1', N'0', N'10', N'20171118123605856')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'55', N'小米6', N'33', N'2599.0000', N'2499.0000', N'小米6，全新特价，欲购从速<img src="http://localhost:2446/UI/kfckeditor/editor/images/smiley/msn/shades_smile.gif" alt="" />', N'2017/11/18 12:41:09', N'500', N'1', N'1', N'1', N'10', N'20171118123759379')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'56', N'情侣小风扇', N'26', N'50.0000', N'30.0000', N'&nbsp;精美小风扇，是情侣的不二之选', N'2017/12/27 2:06:09', N'50', N'0', N'0', N'1', N'2', N'20171227020450739')
GO
GO
INSERT INTO [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (N'57', N'运动手环', N'26', N'200.0000', N'100.0000', N'全新手环，5折出售，尽快抢购！！！！', N'2017/12/27 6:28:19', N'10', N'1', N'1', N'0', N'50', N'20171227062646010')
GO
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO

-- ----------------------------
-- Table structure for proimage
-- ----------------------------
DROP TABLE [dbo].[proimage]
GO
CREATE TABLE [dbo].[proimage] (
[_id] int NOT NULL IDENTITY(1,1) ,
[_imageid] varchar(50) NOT NULL ,
[_imageurl] varchar(100) NULL ,
[_color] varchar(50) NULL ,
[_sizeid] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[proimage]', RESEED, 137)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'proimage', 
'COLUMN', N'_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'proimage'
, @level2type = 'COLUMN', @level2name = N'_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'proimage'
, @level2type = 'COLUMN', @level2name = N'_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'proimage', 
'COLUMN', N'_imageid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'proimage'
, @level2type = 'COLUMN', @level2name = N'_imageid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'proimage'
, @level2type = 'COLUMN', @level2name = N'_imageid'
GO

-- ----------------------------
-- Records of proimage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[proimage] ON
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'125', N'20171112082558727', N'show_imageurl/show_20171112082745655.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'126', N'20171112113610843', N'show_imageurl/show_20171112113724611.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'127', N'20171112113610843', N'show_imageurl/show_20171112113737388.jpg', N'其他', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'128', N'20171112113812249', N'show_imageurl/show_20171112113907419.jpg', N'其他', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'129', N'20171112113937626', N'show_imageurl/show_20171112114056365.jpg', N'其他', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'130', N'20171112114604268', N'show_imageurl/show_20171112114655463.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'131', N'20171118104259655', N'show_imageurl/show_20171118104425898.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'132', N'20171118104540582', N'show_imageurl/show_20171118104629065.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'133', N'20171118104714242', N'show_imageurl/show_20171118104822577.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'134', N'20171118123605856', N'show_imageurl/show_20171118123722081.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'135', N'20171118123759379', N'show_imageurl/show_20171118124041916.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'136', N'20171227020450739', N'show_imageurl/show_20171227020544514.jpg', N'正面', null)
GO
GO
INSERT INTO [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (N'137', N'20171227062646010', N'show_imageurl/show_20171227062751625.jpg', N'正面', null)
GO
GO
SET IDENTITY_INSERT [dbo].[proimage] OFF
GO

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE [dbo].[size]
GO
CREATE TABLE [dbo].[size] (
[_id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[_sizeid] varchar(50) NOT NULL ,
[_sizename] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[size]', RESEED, 296)
GO

-- ----------------------------
-- Records of size
-- ----------------------------
SET IDENTITY_INSERT [dbo].[size] ON
GO
INSERT INTO [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (N'244', N'', N'XXS')
GO
GO
INSERT INTO [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (N'296', N'', N'XL')
GO
GO
SET IDENTITY_INSERT [dbo].[size] OFF
GO

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE [dbo].[user]
GO
CREATE TABLE [dbo].[user] (
[_userid] int NOT NULL IDENTITY(1,1) ,
[_username] varchar(50) NULL ,
[_pwd] varchar(50) NULL ,
[_email] varchar(50) NULL ,
[_qq] varchar(50) NULL ,
[_msn] varchar(50) NULL ,
[_safequestion] varchar(150) NULL ,
[_safepwd] varchar(150) NULL ,
[_registtime] datetime NULL DEFAULT (getdate()) ,
[_logintime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[user]', RESEED, 45)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_pwd')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_pwd'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_pwd'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'Email'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Email'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_qq')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'qq'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_qq'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'qq'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_qq'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_msn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'MSN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_msn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'MSN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_msn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_safequestion')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'安全问题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_safequestion'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'安全问题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_safequestion'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'_safepwd')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'安全密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_safepwd'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'安全密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'_safepwd'
GO

-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'2', N'win', N'1226', N'512963806@qq.com', N'512963806', null, N'我的名字叫什么?', N'w昂您', N'2010-08-19 00:00:00.000', null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'8', N'w', N'BF657CA0B9DBE3AE', N'512963806@qq.com', N'512963806', N'哈哈哈哈哈哈哈', N'我是谁的谁', N'她的他', N'2010-08-19 00:00:00.000', N'2010-08-21 17:05:28.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'9', N'win.vs', N'3D9EFE0C90564204', N'512963806@qq.com', N'379318604', N'我是帅哥吗？', N'我是谁的谁？', N'她的他', N'2010-08-19 00:00:00.000', N'2010-08-25 00:05:26.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'10', N'dgf', N'3D9EFE0C90564204', N'wnh@qq.com', N'325432545', N'', N'dsfdsf', N'dsfdsg', null, null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'11', N'11', N'3DB61F0ADF3CE0FE', N'hhh@qq.com', N'1111', N'1111', N'111', N'111', null, null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'12', N'bin', N'3D9EFE0C90564204', N'379318604@qq.com', N'379318604', N'3', N'张柏芝复出', N'说的', null, null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'14', N'', N'A5FE015405306BF7', N'2134214@qq.com', N'', N'', N'', N'', N'2010-08-20 11:09:41.000', null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'15', N'jie', N'BF657CA0B9DBE3AE', N'wnj@qq.com', N'34324325', N'', N'c发生的vgfdv', N'呆宿舍', N'2010-08-20 11:24:44.000', null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'16', N'', N'3D9EFE0C90564204', N'dfsfsd@qq.com', N'', N'', N'', N'', N'2010-08-20 11:42:15.000', null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'17', N'sdf', N'BF657CA0B9DBE3AE', N'wewr@qq.com', N'3543542', N'', N'dsfdsf', N'dsfdsfds', N'2010-08-20 11:51:41.000', null)
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'18', N'hfq', N'A5FE015405306BF7', N'hfq@qq.com', N'1', N'1', N'1', N'1', N'2010-08-21 09:36:58.000', N'2010-08-24 17:24:27.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'19', N'宁辉', N'3DB61F0ADF3CE0FE', N'123@qq.com', N'512963806', N'http://www.baidu.com', N'我是谁的谁？', N'她的他', N'2010-08-21 11:55:21.000', N'2010-08-21 14:04:53.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'20', N'111111', N'3DB61F0ADF3CE0FE', N'1146458323@qq.com', N'11111111111', N'11111111111', N'111111', N'111111', N'2010-08-24 16:14:34.000', N'2010-08-24 21:29:32.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'21', N'你好啊', N'D385CA51C5DF6E15D2BBF7356B9CE4FE', N'757808689@qq.com', N'757808689', N'757808689', N'757808689', N'757808689', N'2010-08-24 16:15:21.000', N'2010-08-24 17:12:53.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'22', N'神之右手', N'83F1F221592C5989E183B041414CAD15', N'343374078@qq.com', N'343374078', N'', N'我是谁', N'123', N'2010-08-24 16:16:07.000', N'2010-08-24 21:44:09.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'23', N'111111', N'BF657CA0B9DBE3AE', N'111111@qq.com', N'1111111111', N'1111111111', N'111111', N'111111', N'2010-08-24 16:18:49.000', N'2010-08-24 16:18:49.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'24', N'111111', N'3DB61F0ADF3CE0FE', N'1111111@123.com', N'111111', N'111111', N'111111', N'111111', N'2010-08-24 16:23:22.000', N'2010-08-24 16:23:22.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'25', N'xiao', N'23B30534DEC97077', N'123@163.com', N'123', N'123', N'123', N'123', N'2010-08-24 16:46:15.000', N'2010-08-24 21:17:38.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'26', N'xiao', N'23B30534DEC97077', N'123@163.com', N'123', N'123', N'123', N'123', N'2010-08-24 16:46:15.000', N'2010-08-24 16:46:15.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'27', N'admin', N'1A870A4B843C2C8FDD3A9D2A7652305F', N'admin@admin.com', N'111111111', N'111111111', N'源码下载 ', N'mycodes.net', N'2010-09-07 11:16:20.000', N'2014-11-02 21:05:05.000')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'28', N'guo0423', N'123456', N'123456@qq.com', N'26352665', N'5252545', N'asdasd', N'asdddas', N'2017-11-11 11:38:08.580', N'2017-11-11 11:38:08.580')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'29', N'sad', N'0D86417B267AA3F8', N'1083129741@qq.com', N'11111', N'2222', N'255454', N'54545', N'2017-11-11 11:40:21.997', N'2017-11-11 11:42:09.957')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'30', N'gh', N'A2035C15DA89E31E6AA44830724FE1FF', N'guohui@qq.com', N'1111111', N'1222222', N'dfgdfg', N'dfgdfgdf', N'2017-11-11 19:24:09.043', N'2017-11-21 23:12:51.717')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'31', N'NST', N'307901605FD2A4DEED2B1F68EFCD34C8', N'guo1083129741@163.com', N'1083129741', N'1083129741', N'你是谁？', N'我是你', N'2017-11-22 20:06:40.573', N'2017-11-22 20:56:41.687')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'32', N'sdsd', N'3D24219C061C2DCE', N'yu@123.com', N'123', N'123456@qq.com', N'dsd', N'sdas', N'2017-12-03 21:24:55.480', N'2017-12-03 21:25:44.310')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'33', N'sdsd', N'3D24219C061C2DCE', N'123456@163.com', N'1221', N'1083129741', N'中国', N'去去去', N'2017-12-06 21:30:57.897', N'2017-12-06 21:31:16.163')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'34', N'sdsd', N'3D24219C061C2DCE', N'guo123456789@qq.com', N'sadasd', N'asdasd', N'sadsd', N'sadasd', N'2017-12-14 14:06:22.533', N'2017-12-14 14:06:22.533')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'35', N'asdsa', N'3D24219C061C2DCE', N'gh123456@qq.com', N'asdd', N'asdas', N'sdasd', N'asdasd', N'2017-12-14 14:07:51.767', N'2017-12-14 14:08:07.503')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'36', N'', N'2A2BD1AA6379F81F', N'6655', N'', N'', N'', N'', N'2017-12-26 14:26:39.970', N'2017-12-26 14:26:39.970')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'37', N'李明明', N'3D24219C061C2DCE', N'user@qq.com', N'1083129741', N'1083129741', N'你是谁？', N'李明明', N'2017-12-26 15:09:34.233', N'2017-12-26 15:10:04.423')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'38', N'GH', N'3D24219C061C2DCE', N'guohui@admin.com', N'1083129741', N'1083129741', N'你是谁？', N'不知道', N'2017-12-26 20:21:57.183', N'2018-01-08 19:06:44.587')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'39', N'sdasd', N'3D24219C061C2DCE', N'9655@qq.com', N'sdad', N'asdas', N'sadsd', N'sdd', N'2017-12-27 13:55:18.050', N'2017-12-27 13:55:18.050')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'40', N'sdasd', N'3D24219C061C2DCE', N'98655@qq.com', N'sdad', N'asdas', N'sadsd', N'sdd', N'2017-12-27 13:55:46.807', N'2017-12-27 13:55:46.807')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'41', N'sadasd', N'3D24219C061C2DCE', N'465656@qq.com', N'525256', N'455556', N'dasd', N'asdad', N'2017-12-27 14:00:56.353', N'2017-12-27 14:00:56.353')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'42', N'5655', N'136383917D0E67A8', N'655235@qq.com', N'4545', N'52656652', N'dasd', N'sd', N'2017-12-27 14:06:45.647', N'2017-12-27 14:06:45.647')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'43', N'sdasd', N'3D24219C061C2DCE', N'nhj@qq.com', N'455656', N'454545', N'sadsd', N'wertr', N'2017-12-27 14:07:39.823', N'2017-12-27 14:07:39.823')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'44', N'jiajai', N'B4CFF4730F44D279CCD3D21F8522AEFC', N'576169199@qq.com', N'576169199', N'17878769070', N'过', N'过', N'2017-12-27 21:46:04.483', N'2017-12-27 21:46:04.483')
GO
GO
INSERT INTO [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (N'45', N'Yughost', N'307901605FD2A4DEED2B1F68EFCD34C8', N'guo1083@qq.com', N'12345678', N'123456', N'你是谁？', N'小明', N'2018-01-19 18:31:29.210', N'2018-01-19 18:34:06.760')
GO
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO

-- ----------------------------
-- Indexes structure for table address
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table address
-- ----------------------------
ALTER TABLE [dbo].[address] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table admin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table article
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table article
-- ----------------------------
ALTER TABLE [dbo].[article] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table collect
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table collect
-- ----------------------------
ALTER TABLE [dbo].[collect] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table downlist
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table downlist
-- ----------------------------
ALTER TABLE [dbo].[downlist] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table fathercate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table fathercate
-- ----------------------------
ALTER TABLE [dbo].[fathercate] ADD PRIMARY KEY ([_fathercateid])
GO

-- ----------------------------
-- Indexes structure for table help
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table help
-- ----------------------------
ALTER TABLE [dbo].[help] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table helpcate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table helpcate
-- ----------------------------
ALTER TABLE [dbo].[helpcate] ADD PRIMARY KEY ([_cateid])
GO

-- ----------------------------
-- Indexes structure for table message
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table message
-- ----------------------------
ALTER TABLE [dbo].[message] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE [dbo].[news] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table newscate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table newscate
-- ----------------------------
ALTER TABLE [dbo].[newscate] ADD PRIMARY KEY ([_cateid])
GO

-- ----------------------------
-- Indexes structure for table orderdetail
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table orderdetail
-- ----------------------------
ALTER TABLE [dbo].[orderdetail] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table ordertable
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ordertable
-- ----------------------------
ALTER TABLE [dbo].[ordertable] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table procate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table procate
-- ----------------------------
ALTER TABLE [dbo].[procate] ADD PRIMARY KEY ([_cateid])
GO

-- ----------------------------
-- Indexes structure for table product
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table proimage
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table proimage
-- ----------------------------
ALTER TABLE [dbo].[proimage] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table size
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table size
-- ----------------------------
ALTER TABLE [dbo].[size] ADD PRIMARY KEY ([_id])
GO

-- ----------------------------
-- Indexes structure for table user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD PRIMARY KEY ([_userid])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[address]
-- ----------------------------
ALTER TABLE [dbo].[address] ADD FOREIGN KEY ([_userid]) REFERENCES [dbo].[user] ([_userid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[collect]
-- ----------------------------
ALTER TABLE [dbo].[collect] ADD FOREIGN KEY ([_userid]) REFERENCES [dbo].[user] ([_userid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[help]
-- ----------------------------
ALTER TABLE [dbo].[help] ADD FOREIGN KEY ([_cateid]) REFERENCES [dbo].[helpcate] ([_cateid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[news]
-- ----------------------------
ALTER TABLE [dbo].[news] ADD FOREIGN KEY ([_cateid]) REFERENCES [dbo].[newscate] ([_cateid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[news] ADD FOREIGN KEY ([_ispic]) REFERENCES [dbo].[article] ([_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[procate]
-- ----------------------------
ALTER TABLE [dbo].[procate] ADD FOREIGN KEY ([_fathercateid]) REFERENCES [dbo].[fathercate] ([_fathercateid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[product]
-- ----------------------------
ALTER TABLE [dbo].[product] ADD FOREIGN KEY ([_cateid]) REFERENCES [dbo].[procate] ([_cateid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
