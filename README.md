# 🤖 Robot Framework Demo

Automated testing of [QA Test Hub](https://www.qatesthub.info/) using **Robot Framework**.

This project demonstrates:
- The **Page Object Model (POM)** pattern
- Good practices in test automation
- Coverage of navigation and cart functionalities

---

## 🗂️ Project Structure

robot-framework-demo/
├── Resources/
│ ├── CommonKeywords.robot # Shared reusable keywords
│ └── PageObjects/ # Page Object implementations
│   ├── menu_page.robot
├── Results/ # Robot Framework reports (log.html, report.html, output.xml)
├── Tests/
│ ├── navigation.robot # Navigation menu test cases
│ └── ebook_quantity.robot # E-books cart and price validation
├── venv/ # Python virtual environment
├── requirements.txt # Python dependencies
├── LICENSE
└── README.md

---

## ⚙️ Setup

1. **Clone the repository**:
   git clone https://github.com/s2mcunha/robot-framework-demo.git
   cd robot-framework-demo
2. **Create and activate a virtual environment**:
On Windows:
   python -m venv venv
   .\venv\Scripts\activate
On MacOS/Linux:
   python3 -m venv venv
   source venv/bin/activate
3. **Install dependencies:**:
   pip install -r requirements.txt

▶️ Running Tests
To run all tests in the Tests/ directory:
   robot Tests/
Or run an individual test file:
   robot Tests/navigation.robot
   robot Tests/ebook_quantity.robot

📝 Test results will be saved in the default directory (./results), or specify one:
robot -d Results Tests/

📦 Directory Overview (Quick)
Folder / File	Description
Resources/	Reusable keywords and Page Objects
CommonKeywords.robot	Commonly used helper keywords
PageObjects/	Encapsulated locators and actions (POM)
Tests/	Test case files
navigation.robot	Menu navigation test cases
ebook_quantity.robot	Shopping cart validation (e-books)
Results/	Robot Framework logs/reports (after execution)
venv/	Python virtual environment

📄 License
This project is licensed under the MIT License.
See the LICENSE file for more details.

🤝 Contributing
Contributions are welcome!
Please open an issue or submit a pull request for improvements or bug fixes.

📬 Contact
For any questions or feedback, contact:
📧 s2mcunha@hotmail.com