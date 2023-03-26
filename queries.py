import sqlite3
from pprint import pprint


def execute_query(sql_file) -> list:
    with open(sql_file, 'r') as f:
        sql = f.read()

    with sqlite3.connect('hw_m06.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


if __name__ == "__main__":

    print("\n1. Найти 5 студентов с наибольшим средним баллом по всем предметам:")
    result = execute_query("query_01.sql")
    pprint(result)

    print("\n2. Найти студента с наивысшим средним баллом по определенному предмету:")
    result = execute_query("query_02.sql")
    pprint(result)

    print("\n3. Найти средний балл в группах по определенному предмету:")
    result = execute_query("query_03.sql")
    pprint(result)

    print("\n4. Найти средний балл на потоке (по всей таблице оценок):")
    result = execute_query("query_04.sql")
    pprint(result)

    print("\n5. Найти какие курсы читает определенный преподаватель:")
    result = execute_query("query_05.sql")
    pprint(result)

    print("\n6. Найти список студентов в определенной группе:")
    result = execute_query("query_06.sql")
    pprint(result)

    print("\n7. Найти оценки студентов в отдельной группе по определенному предмету:")
    result = execute_query("query_07.sql")
    pprint(result)

    print("\n8. Найти средний балл, который ставит определенный преподаватель по своим предметам:")
    result = execute_query("query_08.sql")
    pprint(result)

    print("\n9.Найти список курсов, которые посещает определенный студент:")
    result = execute_query("query_09.sql")
    pprint(result)

    print("\n10. Список курсов, которые определенному студенту читает определенный преподаватель:")
    result = execute_query("query_10.sql")
    pprint(result)

    print("\n11. редний балл, который определенный преподаватель ставит определенному студенту:")
    result = execute_query("query_11.sql")
    pprint(result)
