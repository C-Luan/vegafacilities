# 🌐 Vega Facilities - Landing Page (Flutter Web)

Landing Page institucional desenvolvida em **Flutter Web**, com layout **customizado e responsivo**, inspirada no mockup oficial da Vega Facilities.

---

## 🚀 Tecnologias Utilizadas

- **Flutter Web**
- **Dart**
- **LayoutBuilder** e **MediaQuery** para responsividade
- **Widgets personalizados** (sem uso do Material 3)
- **Design modular** (componentes por seção)

---

## 📂 Estrutura de Pastas

```
lib/
├── main.dart
├── core/
│   ├── app_colors.dart
│   ├── app_text_styles.dart
│   ├── responsive_layout.dart
│   └── constants.dart
│
├── sections/
│   ├── header_section.dart
│   ├── hero_section.dart
│   ├── about_section.dart
│   ├── services_section.dart
│   ├── gallery_section.dart
│   ├── engineering_section.dart
│   ├── clients_section.dart
│   └── contact_section.dart
│
└── widgets/
    ├── custom_button.dart
    ├── section_title.dart
    ├── service_card.dart
    └── footer.dart
```

---

## 🎨 Design

O design foi baseado nos **mockups oficiais da Vega Facilities**, com foco em:

- Layout moderno e limpo  
- Cores e tipografia corporativas  
- Adaptação fluida entre **desktop, tablet e mobile**

As imagens são referenciadas por nomes genéricos dentro de `/assets/images/`.

Exemplo:
```
assets/
 └── images/
      ├── hero_banner.png
      ├── about_image.png
      ├── service_1.png
      ├── service_2.png
      ├── gallery_1.png
      └── contact_bg.png
```

---

## 🧱 Como Rodar o Projeto

### 1️⃣ Clonar o repositório
```bash
git clone https://github.com/seuusuario/vega_facilities_web.git
cd vega_facilities_web
```

### 2️⃣ Instalar dependências
```bash
flutter pub get
```

### 3️⃣ Rodar localmente
```bash
flutter run -d chrome
```

### 4️⃣ Gerar build web
```bash
flutter build web
```

---

## 📱 Responsividade

O layout se adapta automaticamente para:
- 💻 **Desktop (>= 1200px)**
- 📊 **Tablet (entre 800px e 1199px)**
- 📱 **Mobile (< 800px)**

A lógica está centralizada no arquivo `core/responsive_layout.dart`.

---

## 🧩 Componentização

Cada seção do site é um componente independente, facilitando manutenção e expansão futura.

Exemplo:
```dart
class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Vega Facilities"),
          Row(
            children: [
              Text("Início"),
              SizedBox(width: 20),
              Text("Serviços"),
              SizedBox(width: 20),
              Text("Contato"),
            ],
          ),
        ],
      ),
    );
  }
}
```

---

## 🧠 Boas Práticas Aplicadas

- Responsividade sem dependências externas
- Códigos modulares e reutilizáveis
- Uso de constantes centralizadas
- Separação de responsabilidades entre layout e lógica

---

## 🏗️ Próximos Passos

- Implementar animações suaves com **`AnimatedOpacity`** e **`ScrollController`**
- Adicionar suporte a SEO e metatags
- Otimizar imagens para melhor desempenho

---

## 👨‍💻 Desenvolvido por

**Carlos Luan**  
Analista de Sistemas • Desenvolvedor Flutter & Web  
📧 contato: [carlos.luanrodrigues@outlook.com](mailto:carlos.luanrodrigues@outlook.com)

