# Nurse Dispatch Frontend Architecture

## Overview

The nurse dispatch frontend is a lightweight, modern React application designed to serve as the user interface for dispatch operators, nurses, and customers. While the underlying application is currently minimalist, it provides the foundation for an extensible interface that will support scheduling, assignments, real-time dispatch status, and notifications as described in the project requirements. 

At present, the frontend is implemented as a single-page React app, which is structured for future scalability as the nurse dispatch platform evolves into a multi-featured service. The components discussed here are based strictly on the actual current architecture in the codebase.

## Architecture Diagram

```mermaid
flowchart TD
    subgraph Browser
        A[HTML page] --> B[ReactDOM.render\n(src/index.js)]
        B --> C[App Component\n(src/App.js)]
    end
    C -->|Uses| D[App.css (theming, UI styles)]
    C -->|Imports| E[logo.svg]
    C -.->|Planned: API Calls| F[Backend Service (future)]
```

**Legend:**  
- Solid arrows (-->): Actual existing relationships  
- Dashed arrows (-.->): Planned or extensible connection points

## Component Breakdown

- **HTML Page**: The static host page loads a root `<div>` which is the mounting point for the React app.
- **ReactDOM.render (src/index.js)**: The entry point of the application, responsible for rendering the main `App` component inside the DOM.
- **App Component (src/App.js)**: The core UI component responsible for:
  - Managing the application's light/dark theme using React state and effect hooks,
  - Rendering a theme toggle button, branding logo, informational text, and a React documentation link.
- **App.css**: Encapsulates all theming and responsive UI styling, enabling fast design updates and customizations.
- **logo.svg**: Used as the visual branding element on the main screen.

### Extensibility and Future Growth

While the system currently consists of a single `App` component, it is structured to allow modular expansion. Future versions will likely include:
- UI components for login/authentication
- Dashboards for nurse assignment and real-time status updates
- Forms for service request submission and schedule management
- A notification panel for real-time alerts
- Interfaces with RESTful backend APIs

These additions will be organized as modular React components, imported and orchestrated by the main `App` component and routed as needed using React Router or an equivalent tool.

## Communication and Integration

Currently, the frontend does not include any API communication or backend integration. The placeholder in the architecture diagram indicates where future RESTful API calls to a backend service will be connected to handle nurse dispatch data, assignments, notifications, and more.

## Theming & Customization

The design uses CSS variables for theming, making it easy to adapt the look and feel of the application. The `App.css` file defines both light and dark themes and adds responsive design rules for mobile compatibility.

---

_Last updated: 2024-06_

