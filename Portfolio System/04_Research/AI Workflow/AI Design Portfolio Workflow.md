# **Systemic Architecture for AI-Assisted UX Engineering: An Enterprise Workflow for Portfolio Creation and Maintenance**

## **Architectural Foundations and Toolchain Topology**

Designing and maintaining a modern User Experience (UX) and Product Design portfolio requires balancing visual craft, strategic narrative, and production-grade code. The integration of artificial intelligence into this lifecycle often introduces friction: token exhaustion, context pollution, redundant code generation, and fragmented design systems1. To overcome these failure modes, an advanced AI-assisted portfolio system must be architected as a modular, tool-specialized pipeline where each model, platform, and protocol operates strictly within its domain of optimal competence2.  
The workflow relies on a clear separation between high-level conceptual research, systemic state management, visual interface generation, terminal-based code orchestration, and headless publishing1. Rather than overloading a single model with end-to-end execution, responsibilities are partitioned across specialized tools:

* **Strategic Knowledge and Research Layer**: Google Deep Research and ChatGPT handle broad market analysis, competitive teardowns, and initial exploratory queries4. Google Deep Research generates comprehensive background intelligence on target industries, while ChatGPT acts as a disposable model for unconstrained brainstorming without consuming high-value token quotas4.  
* **Knowledge Synthesis and Narrative Layer**: Claude Pro Projects serve as isolated context containers for case study synthesis, prompt library storage, and tone-of-voice alignment7. By isolating case studies into distinct project environments, cross-project memory contamination is eliminated while maintaining precise brand and formatting guidelines7.  
* **Visual UI and Design System Layer**: Figma functions as the single source of truth for visual layouts, design tokens, responsive UI components, and layout variables1. Interfaces are constructed using native Auto Layout and linked directly to AI agents via the Model Context Protocol (MCP)1.  
* **Terminal and Agent Orchestration Layer**: Claude Code operates as an autonomous command-line agent tasked with turning Figma design files into clean HTML, CSS, and JavaScript1. It leverages project-level configuration files (CLAUDE.md) and local environment hooks to execute deterministic builds, refactoring, and git operations11.  
* **Version Control and Knowledge Management Layer**: GitHub tracks code changes, maintains Markdown-based case studies, and acts as the central interface for project documentation5. The GitHub MCP server connects Claude Code directly to repository states, pull requests, and continuous integration pipelines13.  
* **Headless Publishing Layer**: Framer acts as a high-performance visual publishing engine, consuming Markdown or MDX content directly from GitHub via the Framer CMS API and GitHub Sync plugins to render dynamic web pages6.

| Layer | Primary Tooling | Functional Responsibility | Context & Memory Scope |
| :---- | :---- | :---- | :---- |
| **Exploratory Research** | Google Deep Research / ChatGPT | Competitor analysis, raw data gathering, disposable queries | Session-bound / Non-persistent4 |
| **Narrative Synthesis** | Claude Pro Projects | Case study synthesis, UX narrative, tone guide storage | Isolated Project Knowledge Base (200k tokens)7 |
| **Interface Design** | Figma | Component systems, Auto Layout, spatial systems, design variables | Figma Local & Remote File Context1 |
| **Code Generation** | Claude Code CLI | HTML/CSS/JS conversion, visual component development, build tasks | Ephemeral active window \+ CLAUDE.md \[cite: 1, 3\] |
| **Source Control & Ops** | GitHub & GitHub MCP | Version control, issue tracking, CI/CD, documentation storage | Repository tree & OAuth state5 |
| **CMS & Publishing** | Framer & Framer CMS API | Visual hosting, headless Markdown ingestion, dynamic routing | CMS Schema & GitHub Sync6 |

Adopting the "Disposable Model Strategy" prevents token burn on primary platforms4. Exploratory questions—such as syntax checks, basic UX framework definitions, or general research—are routed to unconstrained free models4. Only refined inputs, validated design structures, and production-bound code prompts enter the Claude Pro and Claude Code ecosystems4.

## **Knowledge Management, Context Engineering, and Memory Architecture**

A common failure mode in AI-assisted development is context decay3. As conversation sessions expand, large language models drop earlier directives, hallucinate non-standard utility classes, and introduce unnecessary code abstractions2. Mitigating this requires a three-tiered context architecture combining persistent platform instructions, isolated project environments, and local file-system progressive disclosure12.

### **The Three-Layer Context System**

The initial layer consists of Global User Instructions stored at the account level in Claude Pro, defining high-level behavioral constraints, personal identity, and broad communication styles17.  
The second layer relies on Project-Scoped Context Containers created inside Claude Pro Projects for specific portfolio initiatives, such as an enterprise design system case study or an e-commerce redesign7. These containers house static reference files, raw user interview transcripts, competitive audits, and rigid output templates7. Isolating these assets ensures that client-specific guidelines do not bleed across case studies7.  
The third layer manages Local Progressive File Disclosure via CLAUDE.md within the local code repository12. Rather than dumping entire system documentation files into every prompt, context is exposed progressively to maximize reasoning accuracy while minimizing token overhead12.

### **Progressive File Disclosure and Token-Optimized CLAUDE.md Engineering**

Frontier models follow a finite instruction budget—typically between 100 and 150 explicit instructions—before compliance drops noticeably12. Because the Claude Code harness consumes approximately 50 instruction slots for its internal system operations, repository configuration files must remain under 60 to 100 lines12.  
To enforce this budget, instruction files are structured according to progressive capability levels (L1 through L6), ensuring that global rules remain lightweight while domain-specific guidelines load strictly on demand16.

| Capability Level | Scope & Placement | Operational Purpose | Token Overhead Impact |
| :---- | :---- | :---- | :---- |
| **L1: Basic** | Root CLAUDE.md | Boilerplate setup commands and basic repository description | Minimal baseline context16 |
| **L2: Scoped** | Root CLAUDE.md | Explicit project constraints using strict MUST and MUST NOT directives | Persistent \~300 tokens per session11 |
| **L3: Structured** | @docs/ References | External file links (@docs/design-tokens.md) loaded on demand | Zero persistent context cost12 |
| **L4: Abstracted** | Subdirectory CLAUDE.md | Directory-specific guidance (e.g., src/components/CLAUDE.md) | Activated only when working in directory12 |
| **L5: Maintained** | Local Hooks & Scripts | Local shell enforcement scripts and pre-commit checks | Zero context cost; executed locally12 |
| **L6: Adaptive** | Custom MCP / Skills | Dynamic tools and extensions loaded during specific agent actions | Loaded dynamically per tool call11 |

An effective root CLAUDE.md file excludes standard syntax rules that the model already knows and focuses exclusively on non-inferrable operational constraints11:

# **Portfolio Codebase Directives**

## **Tech Stack & Architecture**

* Tech: Vanilla HTML5, CSS Custom Properties, ES6+ Modules. No framework dependencies.  
* Layout: Modern CSS Grid and Flexbox adhering to an 8px spatial grid.  
* Style Tokens: Standardized variables imported from src/styles/tokens.css.

## **Development Directives**

* MUST NOT introduce third-party UI libraries or build frameworks without explicit approval.  
* MUST use named ES module exports (export const Header \= ...).  
* MUST maintain WCAG 2.1 AA accessibility standards (semantic HTML, ARIA, color contrast).

## **Directory Guidance**

* Component logic: src/components/  
* Case study Markdown files: content/case-studies/  
* Domain-specific rules: Read src/components/CLAUDE.md when editing UI modules.

Subdirectory files (such as src/components/CLAUDE.md) auto-activate only when Claude Code operates within that specific directory, shielding the primary context window from unnecessary rules during root-level build or deployment tasks12.

## **Model Context Protocol Integration and Terminal Workflows**

The Model Context Protocol (MCP) functions as an open connectivity standard, allowing terminal agents like Claude Code to read and write directly to external applications like Figma and GitHub without requiring manual copy-pasting or file exports1.  
In a modern UX engineering toolchain, Claude Code acts as the central orchestration harness1. It connects via HTTP or Server-Sent Events (SSE) to the Remote Figma MCP Server to read canvas elements and design tokens1. It connects via Docker or stdio to the GitHub MCP Server to handle repository management, pull requests, and issue tracking13. Additionally, it connects to specialized servers like html.to.design to push generated UI layouts directly back onto the Figma canvas as editable vector layers19.

### **Figma Remote MCP Server Configuration and Canvas Loops**

While Figma offers a local Desktop SSE MCP server, the preferred approach for production workflows is the Remote Figma MCP server1. The remote version operates without requiring the local desktop application to remain open, offering broader feature support, including component variable reading, Code Connect integration, and direct canvas writing9.  
The setup is executed within the terminal:

Bash  
\# Install official Figma plugin for Claude Code  
claude plugin install figma@claude-plugins-official

\# Alternatively, add global user-scoped HTTP transport connection  
claude mcp add \--scope user \--transport http figma https://mcp.figma.com/mcp

Once connected via OAuth authentication, Claude Code can parse selected Figma frame URLs, extract design variables (colors, typography, spacing), and construct exact visual representations in code9.  
Furthermore, the design-to-code workflow operates bi-directionally9. Using the html.to.design MCP server, generated HTML components or conceptual web interfaces can be sent directly to the Figma canvas19. This converts live HTML code into native, editable Figma vector layers, eliminating manual screen recreation during iterative design reviews9.

### **GitHub MCP Integration and Security Hygiene**

Connecting GitHub via MCP grants Claude Code the capability to triage issues, inspect pull requests, read repository trees, and automate documentation syncs directly from natural language commands5.  
To prevent security vulnerabilities, Personal Access Tokens (PATs) must never be hardcoded into configuration files checked into source control13. Tokens should be managed via environment variables and isolated .env files13:

Bash  
\# Add token to local environment file  
echo "GITHUB\_PAT=ghp\_your\_secure\_personal\_access\_token" \>\> .env  
echo ".env" \>\> .gitignore

\# Register GitHub MCP server using Docker container transport  
claude mcp add github \\  
  \-e GITHUB\_PERSONAL\_ACCESS\_TOKEN=$(grep GITHUB\_PAT .env | cut \-d '=' \-f2) \\  
  \-- docker run \-i \--rm \-e GITHUB\_PERSONAL\_ACCESS\_TOKEN ghcr.io/github/github-mcp-server

### **Deterministic Safety Enforcement via Agent Hooks**

While CLAUDE.md provides probabilistic directives, Claude Code PreToolUse hooks enforce deterministic boundaries12. Hooks run shell scripts before executing tool actions, guaranteeing that critical safety rules are never bypassed12.

JSON  
{  
  "hooks": {  
    "PreToolUse": \[  
      {  
        "matcher": "Bash",  
        "hooks": \[  
          {  
            "type": "command",  
            "command": "bash \-c 'if \[\[ \\"$CLAUDE\_TOOL\_INPUT\_command\\" \=\~ \\"git push origin main\\" \]\]; then echo \\"Direct pushes to main branch are prohibited. Create a PR.\\" \>&2; exit 2; fi'"  
          }  
        \]  
      }  
    \]  
  }  
}

This hook blocks direct git pushes to the main production branch, forcing the agent to open a GitHub Pull Request and triggering automated CI/CD validation loops5.

## **Bi-Directional Design Translation and Headless Publishing Pipeline**

Building an enterprise UX portfolio requires maintaining synchronization across three distinct environments: visual design files in Figma, production code in Git, and the presentation layer in Framer1.  
Translating visual layouts into production code relies on mapping Figma's layout engine to modern CSS primitives1. Horizontal Auto Layout frames map directly to CSS Flexbox row layouts, vertical Auto Layout frames map to Flexbox column layouts, and Figma spatial gaps map to CSS custom gap properties1. Figma color and typography variables are extracted directly as CSS Custom Properties (var(--color-primary-500)), ensuring design system alignment1.  
To prevent multi-frame token depletion when processing complex screen flows, screens should be decomposed into atomic components (such as buttons, cards, and navigation bars) rather than passing full page artboards in a single prompt1. Each component is compiled individually and assembled via ES module imports1.

### **Decoupled Content Management via GitHub and Framer CMS**

Directly hardcoding case study narratives into web components creates severe maintenance friction. The optimal pattern leverages Markdown (.md) or MDX (.mdx) files stored within the GitHub repository as the single source of truth for case studies6.  
The end-to-end data flow operates sequentially:

> 1. Design tokens, components, and variables are established in Figma1.  
> 2. Claude Code extracts these tokens via the Remote Figma MCP server and generates modular HTML5, CSS Custom Properties, and JavaScript components1.  
> 3. Case study narratives, metadata, and code components are committed to the GitHub repository under /content/case-studies/6.  
> 4. The Framer GitHub Sync Plugin or Framer CMS API monitors the repository, ingesting Markdown content directly into Framer CMS collections6.  
> 5. Framer renders the dynamic case study pages automatically using pre-designed visual layouts, publishing updates live to the web6.

## **title: "Redesigning Enterprise Analytics" role: "Lead Product Designer" timeline: "3 Months" impact: "42% increase in daily active user retention" tags: \["Systems Design", "User Research", "Data Viz"\]**

## **The Problem Space**

Enterprise users experienced significant friction analyzing high-density telemetry data...  
This decoupled architecture allows Claude Pro Projects to author, refine, and structure portfolio narratives in standard Markdown formats while Framer renders them using pre-designed visual templates6.

## **Token Optimization Protocols, Session Hygiene, and Technological Durability**

Because Claude Pro and Claude Code enforce usage thresholds based on active context length, managing context hygiene directly dictates operational efficiency3.

### **Context Decay and the Document & Clear Strategy**

As session history accumulates, model performance degrades long before reaching the absolute 200k token limit3. Context pollution manifests as hallucinated utilities, ignored design system constraints, and looped execution cycles2.  
UX engineers should maintain strict session discipline by operating under the **60% Capacity Threshold**12:

> 1. **Single Task Focus**: Run Claude Code sessions for one discrete task, such as building a navigation bar component12.  
> 2. **Dump State**: Before context approaches \~120k tokens (or when a task finishes), prompt the agent to write current progress, architecture decisions, and remaining tasks to a temporary plan file in .claude/plans/task-state.md12.  
> 3. **Execute Reset**: Run /clear to purge the active context window completely12.  
> 4. **Resume Session**: Re-brief the fresh session with a single command: claude "Resume task using .claude/plans/task-state.md".

Plans generated via Claude Code's native plan mode (Shift+Tab) persist automatically in \~/.claude/plans/, enabling seamless restarts across session compaction cycles12.

### **Token Expenditure and Model Routing Framework**

To prevent premature plan rate limiting, prompts and tasks must be routed to the appropriate model tier based on computational complexity4.

| Workflow Phase | Primary Tooling | Token Management Protocol | Target Context Cost |
| :---- | :---- | :---- | :---- |
| **Concept & Research** | ChatGPT (Free) / Deep Research | Unconstrained exploration, competitor scraping4 | 0 High-tier Tokens4 |
| **Case Study Drafting** | Claude Pro (Sonnet) | Isolated Projects with strict custom instructions8 | Static Knowledge Base8 |
| **Design Token Extraction** | Figma Remote MCP Server | Scoped frame selection; avoid full artboard passes1 | Low-density JSON parsing9 |
| **Code Generation** | Claude Code CLI | Progressive CLAUDE.md, /clear resetting12 | Keep \< 60k active tokens12 |
| **Publishing Sync** | GitHub Actions & Framer API | Direct headless API sync without LLM translation6 | Zero LLM token usage6 |

### **Technological Longevity and Risk Assessment**

Selecting technologies that survive rapid AI tool decay requires prioritizing open, vendor-neutral protocols over proprietary closed systems.

| Technology / Practice | Predicted Horizon | Architectural Value Proposition | Obsolescence Risk Factor |
| :---- | :---- | :---- | :---- |
| **Vanilla HTML/CSS/JS** | 10+ Years | Universal browser runtime; zero build framework churn2 | Extremely Low2 |
| **Git & Markdown Sync** | 10+ Years | Open, plain-text content layer decoupled from display engines6 | Extremely Low6 |
| **Model Context Protocol (MCP)** | 5–10 Years | Open standard for tool-model connectivity backed by major industry vendors1 | Low1 |
| **Figma Dev Mode / Code Connect** | 3–5 Years | Native component linking bridging design files and codebases1 | Moderate (Vendor dependent)1 |
| **Framer Headless CMS API** | 3–5 Years | High-performance visual hosting powered by structured APIs6 | Moderate (Vendor dependent)6 |
| **Monolithic Text-to-Site Wrappers** | \< 2 Years | Proprietary wrappers generating unmaintainable, locked-in code | Extremely High1 |

Plain HTML/CSS/JS, Markdown, Git, and MCP standards represent foundational layer technologies with long-term longevity1. Conversely, single-prompt text-to-website wrappers and model-specific prompt tricks represent brittle, low-durability trends that generate unmaintainable, non-standard code structures1.

## **Comprehensive Implementation Roadmap and Actionable Framework**

To deploy this advanced workflow, execution should proceed across four sequential setup phases:

### **Phase 1: Environment and Authentication Security Setup**

* Install Claude Code globally via terminal: npm install \-g @anthropic-ai/claude-code1.  
* Establish token storage guidelines by adding .env to .gitignore and configuring local GitHub Personal Access Tokens13.  
* Install official Figma and GitHub MCP servers using user-scoped execution flags9:  
  Bash  
  claude plugin install figma@claude-plugins-official  
  claude mcp add \--scope user github \-e GITHUB\_PERSONAL\_ACCESS\_TOKEN=... \-- docker run \-i \--rm ...

### **Phase 2: Repository Knowledge Architecture**

* Initialize the local portfolio repository (git init) and run claude /init to analyze the project structure3.  
* Structure a lightweight root CLAUDE.md file limited to fewer than 80 lines, enforcing core tech stack constraints (MUST NOT introduce third-party UI libraries)11.  
* Create path-scoped subdirectory instructions in src/components/CLAUDE.md and set up an external context folder (/docs) for on-demand referencing12.  
* Configure a PreToolUse hook in .claude/settings.json to block direct git pushes to main12.

### **Phase 3: Bi-Directional Figma and Framer Pipeline**

* Enable the Dev Mode Remote MCP Server inside Figma Preferences1.  
* Connect the html.to.design MCP connector within Claude Desktop to enable prompt-to-canvas rendering19.  
* Set up a Framer site project, define the CMS schema for case studies, and authenticate the Framer GitHub Sync Plugin pointing to content/case-studies/6.

### **Phase 4: Operational Session Hygiene and Lifecycle Maintenance**

* Adopt the Disposable Model Strategy: Execute raw exploratory research in ChatGPT Free or Deep Research, keeping heavy queries out of Claude Pro/Code4.  
* Draft case studies inside dedicated Claude Pro Projects containing isolated brand and narrative style guides7.  
* Convert Figma UI components into HTML/CSS using Claude Code CLI in focused sessions1.  
* Enforce the Document & Clear discipline: Flush context with /clear every time active session tokens approach 120k tokens or upon completing individual UI modules12.

Following this systemic architecture establishes a portfolio development pipeline that maximizes design precision, minimizes token expenditure, and ensures long-term technical durability1.

#### **Works cited**

> 1. Claude Code \+ Figma MCP Server \- Builder.io, [https://www.builder.io/blog/claude-code-figma-mcp-server](https://www.builder.io/blog/claude-code-figma-mcp-server)  
> 2. CLAUDE.md Best Practices for Beginners | by Mehul Gupta | Data Science in Your Pocket, [https://medium.com/data-science-in-your-pocket/claude-md-best-practices-for-beginners-e57876bb04e2](https://medium.com/data-science-in-your-pocket/claude-md-best-practices-for-beginners-e57876bb04e2)  
> 3. How Claude Code works \- Claude Code Docs, [https://code.claude.com/docs/en/how-claude-code-works](https://code.claude.com/docs/en/how-claude-code-works)  
> 4. 10 Claude AI Tips: Work Efficiently on $20-200/Month (2026) | explainx.ai Blog, [https://explainx.ai/blog/top-10-tips-working-with-claude-efficiently-2026](https://explainx.ai/blog/top-10-tips-working-with-claude-efficiently-2026)  
> 5. How to connect to the GitHub MCP with Claude Code (4 steps) \- Merge.dev, [https://www.merge.dev/blog/github-mcp-claude-code](https://www.merge.dev/blog/github-mcp-claude-code)  
> 6. GitHub Sync plugin for Framer is now live\!, [https://www.framer.community/c/plugins/github-sync-plugin-for-framer-is-now-live](https://www.framer.community/c/plugins/github-sync-plugin-for-framer-is-now-live)  
> 7. 7 Real Claude Project Examples Anyone Can Use \- Tactiq, [https://tactiq.io/learn/claude-project-examples](https://tactiq.io/learn/claude-project-examples)  
> 8. Claude Projects: Complete Guide \+ Setup Tutorial (2025) \- Medium, [https://melissaonwuka.medium.com/claude-projects-complete-guide-setup-tutorial-2025-3b9a60033b59](https://melissaonwuka.medium.com/claude-projects-complete-guide-setup-tutorial-2025-3b9a60033b59)  
> 9. Set up the remote server (recommended) | Developer Docs, [https://developers.figma.com/docs/figma-mcp-server/remote-server-installation/](https://developers.figma.com/docs/figma-mcp-server/remote-server-installation/)  
> 10. Claude Code and Figma: Set up the MCP server, [https://help.figma.com/hc/en-us/articles/39888612464151-Claude-Code-and-Figma-Set-up-the-MCP-server](https://help.figma.com/hc/en-us/articles/39888612464151-Claude-Code-and-Figma-Set-up-the-MCP-server)  
> 11. Best practices for Claude Code, [https://code.claude.com/docs/en/best-practices](https://code.claude.com/docs/en/best-practices)  
> 12. Claude Code Best Practices: Planning, Context Transfer, TDD \- DataCamp, [https://www.datacamp.com/tutorial/claude-code-best-practices](https://www.datacamp.com/tutorial/claude-code-best-practices)  
> 13. GitHub MCP Server, [https://github.com/github/github-mcp-server](https://github.com/github/github-mcp-server)  
> 14. The 10 Must-Have MCP Servers for Claude Code (2025 Developer Edition), [https://roobia.medium.com/the-10-must-have-mcp-servers-for-claude-code-2025-developer-edition-43dc3c15c887](https://roobia.medium.com/the-10-must-have-mcp-servers-for-claude-code-2025-developer-edition-43dc3c15c887)  
> 15. UX Case Study: Enhancing ChatGPT Memory with Innovative Solutions \- Contra, [https://contra.com/community/P3M6Nyzf-ux-case-study-enhancing-chat-gpt-memory](https://contra.com/community/P3M6Nyzf-ux-case-study-enhancing-chat-gpt-memory)  
> 16. CLAUDE.md best practices \- From Basic to Adaptive \- DEV Community, [https://dev.to/cleverhoods/claudemd-best-practices-from-basic-to-adaptive-9lm](https://dev.to/cleverhoods/claudemd-best-practices-from-basic-to-adaptive-9lm)  
> 17. Stash Blog — Claude, MCP, and AI productivity guides, [https://stash-claude.netlify.app/blog/](https://stash-claude.netlify.app/blog/)  
> 18. Connect Claude Code to tools via MCP, [https://code.claude.com/docs/en/mcp](https://code.claude.com/docs/en/mcp)  
> 19. From Claude to Figma via MCP, [https://html.to.design/blog/from-claude-to-figma-via-mcp/](https://html.to.design/blog/from-claude-to-figma-via-mcp/)  
> 20. github-mcp-server/docs/installation-guides/install-claude.md at main, [https://github.com/github/github-mcp-server/blob/main/docs/installation-guides/install-claude.md](https://github.com/github/github-mcp-server/blob/main/docs/installation-guides/install-claude.md)  
> 21. Google's new Open Knowledge Format is basically the CLAUDE.md / memory-folder pattern, formalized into a spec. I'd already built it for my own Claude setup. \- Reddit, [https://www.reddit.com/r/ClaudeAI/comments/1u9rbs8/googles\_new\_open\_knowledge\_format\_is\_basically/](https://www.reddit.com/r/ClaudeAI/comments/1u9rbs8/googles_new_open_knowledge_format_is_basically/)  
> 22. The Claude Code Handbook: A Professional Introduction to Building with AI-Assisted Development \- freeCodeCamp, [https://www.freecodecamp.org/news/claude-code-handbook/](https://www.freecodecamp.org/news/claude-code-handbook/)