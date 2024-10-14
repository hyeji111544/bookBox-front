import 'package:bookbox/core/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              "https://picsum.photos/id/10/200/280",
              height: 250,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: gap_m,
          ),
          Text(
            'eBook · 소설 · 한국소설',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '불편한 편의점',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: gap_s),
          Text(
            '김호연 저',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '나무옆의자 · 2021-05-03',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: gap_m),
          InkWell(
            onTap: () {
              // 클릭 이벤트 처리
              print('좋아요 클릭됨');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              // 버튼 내부 패딩
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // 테두리 색상 설정
                borderRadius: BorderRadius.circular(8.0), // 둥근 모서리
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_outline_sharp, color: Colors.amber), // 아이콘
                  SizedBox(width: 8), // 간격
                  Text(
                    '찜하기 590',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
