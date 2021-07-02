Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
        title: Text("Поиск по актёру",style:TextStyle(color:Colors.black)),
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.arrow_back),color:Colors.black,onPressed: (){Navigator.pop(context);},),
        bottom:PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,0,15,10),
            child: CupertinoTextField(
              placeholder: "Введите имя",
              cursorColor: Colors.black,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white
              ),
              controller: searchController,
              prefix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              onChanged:onSearch ,
            ),
          ),
        ),
      ),
      body: isLoading?Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: CircularProgressIndicator(),
          ))
      :GridView.count(crossAxisCount: 2,
        children: List.generate(2, (index) {
          return filmButton(pageContext, '...', 'name',FilmsWithActorPage("actorName"));
        }),

    ));
