///Created by fuzhi on 2019-06-15
/// 可分页的数据表

import 'package:flutter/material.dart';
import 'package:flutter_app/model/Post.dart';

class PostDataSource extends DataTableSource {
  List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _posts.length;

  @override
  int get selectedRowCount => _selectedCount;

  // 排序
  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getField(a);
      final bValue = getField(b);

      return Comparable.compare(aValue, bValue);
    });

    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Data'),
              rowsPerPage: 15,
              source: _postDataSource,
              // 排序栏的索引号
              sortColumnIndex: _sortColumnIndex,
              // 是否是升序排
              sortAscending: _sortAscending,
              // 定制全选的动作
//              onSelectAll: (bool value) {},
              columns: [
                DataColumn(
                  label: Text('Title'),
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _postDataSource._sort((post) => post.title.length, ascending);

                      _sortColumnIndex = index;
                      _sortAscending = ascending;
                    });
                  },
                ),
                DataColumn(
                  label: Text('Author'),
                ),
                DataColumn(
                  label: Text('Images'),
                ),
//                DataColumn(
//                  label: Text('description'),
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
