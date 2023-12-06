# FleaMarket 跳蚤市场

## 目前问题

#### 已解决的问题
1. 添加了基本的创建 table 的 sql 文件，直接使用即可。 
2. 修改了 bug，直接运行就可以连接上数据库了。
3. 可以看到所有界面了。

#### 待解决的问题与当前任务
1. 注册昵称填写中文，注册之后页面会显示成问号。比如“杨飞”显示为“？？”。
2. 没有商品详情界面的图面，需要添加。（目前预想的设计：点开之后不需要页面跳转，直接屏幕中间跳出来一个方形窗口展示详情即可，因为商品需要展示的详情信息很少）
3. 修改登录注册页面的设计，可以参考某些网站的设计（可以通过检查直接 copy html 和 css代码）。
4. 前端阅读所有 JSP 页面，并在心中想出精美的页面概念图。
5. 后端尝试修改 mybatis 为 hibernate，其他业务先不急。

## 配置与运行

#### 配置要求与配置方法：
1. JDK 17 or JDK 21 
   1. 无需添加环境变量
   2. 在 Project Structure 中的 SDKs 中添加 JDK，
2. Tomcat 10
   1. 无需添加环境变量，以便多个版本的 Tomcat 切换运行
   2. 在 IDEA 的 Settings 中的 Application Servers 添加 Tomcat
3. Maven 3
   1. 添加环境变量
   2. 设置镜像源
   3. 在 IDEA 的 Settings 中的 Maven 设置中选择 Maven home path、User settings file、Local repository
4. MySQL 8
5. 
#### 运行项目
1. 引入 pom.xml 文件中的项目依赖
2. 在 Edit Configuration 中添加 Tomcat，然后在 Deployment 中添加 Artifact
3. 点击运行按钮

## 项目想法来源及背景（原项目文档）

#### 项目想法来源
　　每年毕业生临近毕业时，许多毕业生都会为各类教辅书、考研资料、衣服、电脑桌、日用品....这些文体和休闲物品的处理而感到苦恼，毕业离校又无法带走，扔掉又觉得浪费资源。而对于刚入校园的学弟学妹们，学长学姐们不需要的这些物资，正是学弟学妹们急需的，面对这种现象，校园“跳蚤市场”就这样产生了，大部分校园跳蚤市场都是在每年毕业生临近毕业时，在校园的宿舍楼前便会出现“跳蚤市场”，这已形成了跳蚤市场一条街，大四毕业生纷纷把这些闲置的文体和休闲物品搬出来，以几元的价格卖给学弟学妹，有的几乎是将物品送给了他们，“跳蚤市场”已成为毕业季节一道靓丽的风景，但是跳蚤市场的持续时间往往是毕业生离校前几天到毕业生离校后，这短短的几天，并不能真正的解决问题。面对这种问题，我们可以利用科技的方法，自己创建一个校园跳蚤市场信息共享的平台，大学生可以随时随地交易闲置不用的二手商品，不用再被时间、交换范围、规模、价格限制，平台会提供完备的信息服务，校园内物资利用率得到提高。

#### 项目背景
　　跳蚤市场源于欧美等西方国家，是对旧货地摊市场的别称。由一个个地摊摊位组成，市场规模大小不等。出售商品多是旧货、人们多余的物品及未曾用过但已过时的衣物等，这种市场具有交换范围、时间、规模和价格不确定的特点，它的特点中的种种跳跃性自然让人们想到了跳蚤，所以很形象的取名“跳蚤市场”。

#### 项目意义
　　校园跳蚤市场信息平台可以给在校学生提供一个可以进行信息交互的平台，大学生可以在平台上发布闲置需要出售的物资，也可以在平台上找寻需要购买的物资，通过联系方式可以进行交易。校园跳蚤市场信息平台可以为买家提供商品购买信息渠道，方便快捷，同时获取信息量大，极大地节约了商家和买家的时间成本。
校园跳蚤市场对大学生来说有很多的益处。从浅的方面来说，首先对于毕业生，这已不仅仅是出售自己的物品，更是进入社会前的一次实践机会，毕业生可以通过平台自己发布闲置物品的信息，价格，联系方式，与需要的学生进行交易，相当于是自己当老板，跳蚤市场就像社会中的商场，里面有竞争，而大四学生在即将走进社会时进行一次这样的尝试是利大于弊的。其次是对于大一大二的同学，跳蚤市场的物品价格低廉，尤其是各类教辅书和考研资料，对以后的学习很有帮助。同时还可以和毕业生们讨教就业和考研的经验，从深的层面来看，跳蚤市场也符合我校建设节约型校园的理念。它在无形中形成了一种新型节约文化，节约是一种文化，节约文化是建设节约型校园的重要基础，最根本就是要形成一种节约型的消费方式和生活方式。通过毕业生的多余闲置物品的出售，避免了浪费，实现了物品的再利用，在一定程度上实现了资源的节约。节约要求发展循环经济，使物品的价值在二次甚至三次利用中得到重新体现，使其使用时间尽可能的延长，从而使资源得到最充分最合理的利用。
跳蚤市场作为平台，在物品的交换中，使节约产生了社会效益，也使个人直接得利，也符合低碳环保的理念。跳蚤市场的大部分的学生都是抱着“不求卖价多少，但求都能出手”的心态，他们主要是为自己的物品找到一个好的归宿，继续发挥物品的功效，赚钱也已经不是主要目的，而是体验“做生意”乐趣，感受市场文化氛围，同时这样还可以减少浪费，也是践行低碳环保理念的一种方式。通过简单的“交易”，使同学们体会到勤俭节约的意义，跳蚤市场作为一种有效的节约方式，应该得到发展和利用。

#### 项目目的
　　系统用于大学生交易闲置不用的二手商品，提供完备的信息服务，提高资源利用率。

#### 适用范围
　　上海师范大学奉贤校区在校大学生与教师

#### 系统范围
　　适用于大学生发布商品信息和发布联系方式
