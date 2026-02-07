# University Management System

A comprehensive SQL-based database system for managing university operations, including student records, course management, faculty information, and academic administration.

## 📋 Overview

This project provides a complete database solution for university management with detailed entity-relationship modeling, data flow diagrams, and SQL implementation. The system is designed to handle core university operations efficiently and maintain data integrity across all academic processes.

## ✨ Features

- **Student Management**: Track student enrollment, personal information, and academic records
- **Course Management**: Organize courses, sections, and class schedules
- **Faculty Administration**: Manage instructor information and teaching assignments
- **Department Organization**: Structure academic departments and their relationships
- **Enrollment System**: Handle student course registrations and prerequisites
- **Academic Records**: Maintain grades, transcripts, and student performance data

## 📊 Database Design

The project includes comprehensive database design documentation:

- **ER Diagrams**: Complete entity-relationship models with cardinality
- **Relational Schema**: Detailed table structures and relationships
- **UML Class Diagram**: Object-oriented representation of the system
- **Data Flow Diagrams**: Level 0 and Level 1 process flows
- **Use Case Diagram**: System functionality and user interactions
- **Crow's Foot Notation**: Alternative ER representation

## 🗂️ Project Structure

```
University-Management-System/
├── ul_tables.sql              # Database table definitions and schema
├── ul_data.sql                # Sample data for testing and demonstration
├── University_ER_Full.svg     # Complete ER diagram
├── University_ER_With_Cardinality.svg
├── Relational_Schema.svg      # Database schema visualization
├── Relational_crow foot.svg   # Crow's foot ER diagram
├── University_UML_Class_Diagram.svg
├── University_DFD_Level0.svg  # Context-level DFD
├── University_DFD_Level1.svg  # Detailed DFD
├── Case Diagram.svg           # Use case diagram
└── crow foot erd.pdf          # ER diagram in PDF format
```

## 🚀 Getting Started

### Prerequisites

- MySQL 5.7+ or PostgreSQL 9.6+ (or compatible SQL database)
- Database management tool (MySQL Workbench, pgAdmin, DBeaver, etc.)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/AdnanArif22/University-Management-System.git
cd University-Management-System
```

2. Create a new database:
```sql
CREATE DATABASE university_db;
USE university_db;
```

3. Execute the table creation script:
```bash
mysql -u your_username -p university_db < ul_tables.sql
```

4. Load sample data (optional):
```bash
mysql -u your_username -p university_db < ul_data.sql
```

## 💡 Usage Examples

### Query Students in a Department
```sql
SELECT s.student_id, s.name, d.dept_name
FROM students s
JOIN departments d ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Computer Science';
```

### View Course Enrollments
```sql
SELECT c.course_name, COUNT(e.student_id) as enrollment_count
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;
```

### Find Faculty Teaching Assignments
```sql
SELECT f.name, c.course_name, sec.semester
FROM faculty f
JOIN sections sec ON f.faculty_id = sec.faculty_id
JOIN courses c ON sec.course_id = c.course_id;
```

## 📐 Database Schema

The database consists of multiple interconnected tables including:

- `students` - Student personal and academic information
- `faculty` - Instructor details and credentials
- `departments` - Academic department organization
- `courses` - Course catalog and descriptions
- `sections` - Course sections and schedules
- `enrollments` - Student course registrations
- `grades` - Academic performance records
- Additional tables for comprehensive university operations

See the diagram files for complete schema visualization.

## 🎯 Use Cases

The system supports various user roles and operations:

- **Students**: View courses, register for classes, check grades
- **Faculty**: Manage course sections, record grades, view rosters
- **Administrators**: Manage departments, courses, and academic records
- **Registrar**: Process enrollments, generate transcripts, handle academic records

## 📈 Future Enhancements

Potential improvements for the system:

- [ ] Add stored procedures for common operations
- [ ] Implement triggers for data validation
- [ ] Create views for frequently accessed data
- [ ] Add audit tables for tracking changes
- [ ] Develop a web-based frontend interface
- [ ] Implement role-based access control
- [ ] Add reporting and analytics features

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is available for educational and personal use. Please provide attribution when using or modifying this code.

## 👨‍💻 Author

**Adnan Arif**
- GitHub: [@AdnanArif22](https://github.com/AdnanArif22)

## 📞 Contact

For questions or feedback, please open an issue in the GitHub repository.

## 🙏 Acknowledgments

- Database design best practices from academic resources
- SQL standards and normalization principles
- University management system requirements analysis

---

⭐ If you find this project helpful, please consider giving it a star!
