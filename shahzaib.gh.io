<!DOCTYPE html>
<html lang="en" class="dark scroll-smooth">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Shahzaib — Full-Stack Developer & UI/UX Expert</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/lucide@latest"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          fontFamily: {
            sans: ['Plus Jakarta Sans', 'sans-serif'],
            mono: ['JetBrains Mono', 'monospace'],
          },
          colors: {
            background: '#030712',
            surface: '#0f172a',
            surfaceHover: '#1e293b',
            border: '#1e293b',
          }
        }
      }
    }
  </script>
  <style>
    body {
      background-color: #030712;
      color: #f8fafc;
      overflow-x: hidden;
    }
    /* Animated Gradient Background Mesh */
    .bg-mesh {
      position: fixed;
      top: 0; left: 0; width: 100%; height: 100%;
      z-index: -1;
      background: radial-gradient(circle at 15% 20%, rgba(16, 185, 129, 0.08) 0%, transparent 40%),
                  radial-gradient(circle at 85% 80%, rgba(59, 130, 246, 0.08) 0%, transparent 40%),
                  radial-gradient(circle at 50% 50%, rgba(168, 85, 247, 0.05) 0%, transparent 50%);
    }
    /* Bento Glass Cards */
    .bento-card {
      background: rgba(15, 23, 42, 0.6);
      border: 1px solid rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(16px);
      transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
    }
    .bento-card:hover {
      border-color: rgba(16, 185, 129, 0.4);
      transform: translateY(-4px);
      box-shadow: 0 20px 40px -15px rgba(16, 185, 129, 0.15);
    }
    .glass-nav {
      background: rgba(15, 23, 42, 0.75);
      backdrop-filter: blur(20px);
      border: 1px solid rgba(255, 255, 255, 0.1);
    }
    /* Glow effect */
    .glow-text {
      text-shadow: 0 0 30px rgba(16, 185, 129, 0.3);
    }
  </style>
</head>
<body class="antialiased selection:bg-emerald-500/30 selection:text-emerald-200">

  <div class="bg-mesh"></div>

  <!-- Floating Glass Navbar -->
  <header class="fixed top-4 inset-x-0 z-50 flex justify-center px-4">
    <nav class="glass-nav rounded-full px-5 py-2.5 flex items-center gap-6 shadow-2xl">
      <a href="#" class="font-mono text-sm font-bold text-white flex items-center gap-2">
        <span class="w-2.5 h-2.5 rounded-full bg-emerald-400 animate-ping"></span>
        <span id="navName">shahzaib.dev</span>
      </a>
      <div class="hidden sm:flex items-center gap-6 text-xs font-medium text-zinc-400">
        <a href="#about" class="hover:text-white transition">About</a>
        <a href="#skills" class="hover:text-white transition">Skills</a>
        <a href="#projects" class="hover:text-white transition">Projects</a>
        <a href="#experience" class="hover:text-white transition">Experience</a>
        <a href="#contact" class="hover:text-white transition">Contact</a>
      </div>
      <button onclick="openCustomizer()" class="text-xs font-medium bg-emerald-500/10 hover:bg-emerald-500/20 text-emerald-400 px-3.5 py-1.5 rounded-full border border-emerald-500/20 transition flex items-center gap-1.5">
        <i data-lucide="sliders-horizontal" class="w-3.5 h-3.5"></i>
        <span>Customize</span>
      </button>
    </nav>
  </header>

  <main class="max-w-6xl mx-auto px-4 sm:px-6 pt-32 pb-24 space-y-24">

    <!-- Hero Section with 3D Canvas / Floating Elements -->
    <section class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center pt-6">
      <div class="lg:col-span-7 space-y-6">
        <div class="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 text-xs font-mono">
          <span class="w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
          <span id="heroStatus">Available for freelance & full-time roles</span>
        </div>

        <h1 class="text-4xl sm:text-6xl font-extrabold tracking-tight text-white leading-[1.1]">
          Hi, I'm <span id="heroName" class="text-transparent bg-clip-text bg-gradient-to-r from-emerald-400 via-teal-200 to-sky-400 glow-text">Shahzaib</span>.<br />
          <span id="heroHeadline" class="text-zinc-300 font-semibold text-2xl sm:text-4xl mt-2 block">I build high-end 3D & Web experiences.</span>
        </h1>

        <p id="heroBio" class="max-w-xl text-zinc-400 text-base sm:text-lg leading-relaxed">
          Full-stack developer & creative technologist crafting immersive digital products with cutting-edge web technologies, fluid animations, and robust backend architecture.
        </p>

        <div class="flex flex-wrap items-center gap-3 pt-2">
          <a href="#projects" class="px-6 py-3 rounded-xl bg-emerald-500 text-zinc-950 font-bold text-sm hover:bg-emerald-400 transition shadow-lg shadow-emerald-500/25 flex items-center gap-2">
            <span>Explore Work</span>
            <i data-lucide="arrow-down-right" class="w-4 h-4"></i>
          </a>
          <button onclick="copyEmail()" class="px-5 py-3 rounded-xl bento-card text-zinc-300 hover:text-white font-mono text-xs flex items-center gap-2">
            <i data-lucide="copy" class="w-4 h-4 text-emerald-400"></i>
            <span id="heroEmail">hello@shahzaib.dev</span>
          </button>
          <div class="flex items-center gap-2 ml-1">
            <a id="linkGithub" href="https://github.com/Shahzaibsz99" target="_blank" class="p-3 rounded-xl bento-card text-zinc-400 hover:text-white"><i data-lucide="github" class="w-4 h-4"></i></a>
            <a id="linkLinkedin" href="https://linkedin.com" target="_blank" class="p-3 rounded-xl bento-card text-zinc-400 hover:text-white"><i data-lucide="linkedin" class="w-4 h-4"></i></a>
            <a id="linkTwitter" href="https://x.com" target="_blank" class="p-3 rounded-xl bento-card text-zinc-400 hover:text-white"><i data-lucide="twitter" class="w-4 h-4"></i></a>
          </div>
        </div>
      </div>

      <!-- Interactive 3D Canvas Box -->
      <div class="lg:col-span-5">
        <div class="bento-card rounded-3xl p-6 relative overflow-hidden h-[360px] flex flex-col justify-between group">
          <div class="absolute inset-0 opacity-40 pointer-events-none" id="canvas-container"></div>
          <div class="flex items-center justify-between text-xs font-mono text-zinc-400 z-10">
            <span class="flex items-center gap-1.5"><i data-lucide="box" class="w-4 h-4 text-emerald-400"></i> INTERACTIVE 3D OBJECT</span>
            <span class="animate-pulse text-emerald-400">Live</span>
          </div>
          <div class="z-10 bg-slate-900/80 backdrop-blur-md p-4 rounded-2xl border border-white/10">
            <p class="text-xs font-mono text-emerald-400">SPECIALIZATION</p>
            <p class="text-sm font-bold text-white mt-0.5">Full Stack Engineering & Immersive UI</p>
            <p class="text-xs text-zinc-400 mt-1">Transforming complex ideas into sleek, lightning-fast web applications.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Bento Grid About & Stats -->
    <section id="about" class="grid grid-cols-1 md:grid-cols-3 gap-6">
      <div class="bento-card rounded-3xl p-6 flex flex-col justify-between">
        <div class="flex items-center justify-between text-zinc-400 text-xs font-mono">
          <span class="flex items-center gap-1.5"><i data-lucide="map-pin" class="w-4 h-4 text-emerald-400"></i> LOCATION</span>
          <span id="liveClock" class="text-emerald-400 font-bold">PKT --:--</span>
        </div>
        <div class="mt-10">
          <p id="heroLocation" class="text-2xl font-bold text-white">Islamabad, Pakistan</p>
          <p class="text-xs text-zinc-400 mt-1">Available for remote & global contracts</p>
        </div>
      </div>

      <div class="bento-card rounded-3xl p-6 md:col-span-2 flex flex-col justify-between">
        <div class="flex items-center justify-between text-zinc-400 text-xs font-mono mb-6">
          <span class="flex items-center gap-1.5"><i data-lucide="award" class="w-4 h-4 text-sky-400"></i> PERFORMANCE METRICS</span>
          <span>Verified Stats</span>
        </div>
        <div class="grid grid-cols-3 gap-4 text-center">
          <div class="p-4 rounded-2xl bg-white/5 border border-white/5">
            <p class="text-2xl sm:text-3xl font-extrabold text-white">25+</p>
            <p class="text-xs text-zinc-400 mt-1 font-mono">Projects Shipped</p>
          </div>
          <div class="p-4 rounded-2xl bg-white/5 border border-white/5">
            <p class="text-2xl sm:text-3xl font-extrabold text-emerald-400">99%</p>
            <p class="text-xs text-zinc-400 mt-1 font-mono">Client Satisfaction</p>
          </div>
          <div class="p-4 rounded-2xl bg-white/5 border border-white/5">
            <p class="text-2xl sm:text-3xl font-extrabold text-sky-400">3+</p>
            <p class="text-xs text-zinc-400 mt-1 font-mono">Years Experience</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Interactive Skills Section -->
    <section id="skills" class="space-y-6">
      <div>
        <p class="text-xs font-mono text-emerald-400 uppercase tracking-wider">Expertise</p>
        <h2 class="text-3xl font-bold text-white mt-1">Core Tech Stack</h2>
      </div>
      <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
        <div class="bento-card rounded-2xl p-5 flex items-center gap-3">
          <div class="p-3 rounded-xl bg-emerald-500/10 text-emerald-400"><i data-lucide="code-2" class="w-6 h-6"></i></div>
          <div><h4 class="font-bold text-white text-sm">Frontend</h4><p class="text-xs text-zinc-400">React, Next.js, Tailwind</p></div>
        </div>
        <div class="bento-card rounded-2xl p-5 flex items-center gap-3">
          <div class="p-3 rounded-xl bg-sky-500/10 text-sky-400"><i data-lucide="server" class="w-6 h-6"></i></div>
          <div><h4 class="font-bold text-white text-sm">Backend</h4><p class="text-xs text-zinc-400">Node.js, Express, REST</p></div>
        </div>
        <div class="bento-card rounded-2xl p-5 flex items-center gap-3">
          <div class="p-3 rounded-xl bg-purple-500/10 text-purple-400"><i data-lucide="database" class="w-6 h-6"></i></div>
          <div><h4 class="font-bold text-white text-sm">Database</h4><p class="text-xs text-zinc-400">PostgreSQL, Prisma, MongoDB</p></div>
        </div>
        <div class="bento-card rounded-2xl p-5 flex items-center gap-3">
          <div class="p-3 rounded-xl bg-amber-500/10 text-amber-400"><i data-lucide="cpu" class="w-6 h-6"></i></div>
          <div><h4 class="font-bold text-white text-sm">Tools & 3D</h4><p class="text-xs text-zinc-400">Git, Docker, Three.js</p></div>
        </div>
      </div>
    </section>

    <!-- Selected Projects -->
    <section id="projects" class="space-y-6">
      <div class="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
        <div>
          <p class="text-xs font-mono text-emerald-400 uppercase tracking-wider">Portfolio</p>
          <h2 class="text-3xl font-bold text-white mt-1">Featured Projects</h2>
        </div>
        <div class="flex items-center gap-1.5 bg-slate-900/90 p-1.5 rounded-2xl border border-white/10 w-fit">
          <button onclick="filterProjects('all')" data-filter="all" class="filter-btn active px-4 py-2 rounded-xl text-xs font-bold bg-emerald-500 text-zinc-950 transition">All</button>
          <button onclick="filterProjects('web')" data-filter="web" class="filter-btn px-4 py-2 rounded-xl text-xs font-bold text-zinc-400 hover:text-white transition">Web Apps</button>
          <button onclick="filterProjects('ai')" data-filter="ai" class="filter-btn px-4 py-2 rounded-xl text-xs font-bold text-zinc-400 hover:text-white transition">AI / 3D</button>
        </div>
      </div>

      <div id="projectsGrid" class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <!-- Project 1 -->
        <article data-category="ai" class="project-card bento-card rounded-3xl p-6 flex flex-col justify-between group">
          <div>
            <div class="flex items-center justify-between">
              <span class="text-xs font-mono text-emerald-400 bg-emerald-500/10 px-3 py-1 rounded-full border border-emerald-500/20">AI & 3D SaaS</span>
              <div class="flex items-center gap-2 text-zinc-400">
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="github" class="w-4 h-4"></i></a>
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="arrow-up-right" class="w-4 h-4"></i></a>
              </div>
            </div>
            <h3 class="text-xl font-bold text-white mt-5 group-hover:text-emerald-400 transition-colors">PulseVerse AI 3D Studio</h3>
            <p class="text-sm text-zinc-400 mt-2 leading-relaxed">
              An immersive web platform featuring real-time 3D object rendering, semantic AI search, and ultra-fast workspace collaboration.
            </p>
          </div>
          <div class="flex flex-wrap gap-2 mt-6 pt-4 border-t border-white/5 text-xs font-mono text-emerald-300">
            <span>Next.js</span><span>•</span><span>Three.js</span><span>•</span><span>OpenAI</span>
          </div>
        </article>

        <!-- Project 2 -->
        <article data-category="web" class="project-card bento-card rounded-3xl p-6 flex flex-col justify-between group">
          <div>
            <div class="flex items-center justify-between">
              <span class="text-xs font-mono text-sky-400 bg-sky-500/10 px-3 py-1 rounded-full border border-sky-500/20">Fintech Platform</span>
              <div class="flex items-center gap-2 text-zinc-400">
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="github" class="w-4 h-4"></i></a>
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="arrow-up-right" class="w-4 h-4"></i></a>
              </div>
            </div>
            <h3 class="text-xl font-bold text-white mt-5 group-hover:text-sky-400 transition-colors">LedgerFlow Enterprise</h3>
            <p class="text-sm text-zinc-400 mt-2 leading-relaxed">
              Real-time cashflow analytics dashboard with automated invoice reconciliation and multi-currency expense tracking.
            </p>
          </div>
          <div class="flex flex-wrap gap-2 mt-6 pt-4 border-t border-white/5 text-xs font-mono text-sky-300">
            <span>React</span><span>•</span><span>Tailwind CSS</span><span>•</span><span>PostgreSQL</span>
          </div>
        </article>

        <!-- Project 3 -->
        <article data-category="web" class="project-card bento-card rounded-3xl p-6 flex flex-col justify-between group">
          <div>
            <div class="flex items-center justify-between">
              <span class="text-xs font-mono text-purple-400 bg-purple-500/10 px-3 py-1 rounded-full border border-purple-500/20">UI System</span>
              <div class="flex items-center gap-2 text-zinc-400">
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="github" class="w-4 h-4"></i></a>
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="arrow-up-right" class="w-4 h-4"></i></a>
              </div>
            </div>
            <h3 class="text-xl font-bold text-white mt-5 group-hover:text-purple-400 transition-colors">Obsidian UI Kit</h3>
            <p class="text-sm text-zinc-400 mt-2 leading-relaxed">
              Zero-runtime dark-mode React component library built with accessibility primitives and fluid micro-interactions.
            </p>
          </div>
          <div class="flex flex-wrap gap-2 mt-6 pt-4 border-t border-white/5 text-xs font-mono text-purple-300">
            <span>TypeScript</span><span>•</span><span>Radix UI</span><span>•</span><span>Tailwind</span>
          </div>
        </article>

        <!-- Project 4 -->
        <article data-category="ai" class="project-card bento-card rounded-3xl p-6 flex flex-col justify-between group">
          <div>
            <div class="flex items-center justify-between">
              <span class="text-xs font-mono text-amber-400 bg-amber-500/10 px-3 py-1 rounded-full border border-amber-500/20">Developer Tool</span>
              <div class="flex items-center gap-2 text-zinc-400">
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="github" class="w-4 h-4"></i></a>
                <a href="#" class="p-2 rounded-lg bg-white/5 hover:text-white transition"><i data-lucide="arrow-up-right" class="w-4 h-4"></i></a>
              </div>
            </div>
            <h3 class="text-xl font-bold text-white mt-5 group-hover:text-amber-400 transition-colors">CommitCraft AI CLI</h3>
            <p class="text-sm text-zinc-400 mt-2 leading-relaxed">
              Lightweight utility that analyzes git diffs and automatically generates semantic conventional commit messages in milliseconds.
            </p>
          </div>
          <div class="flex flex-wrap gap-2 mt-6 pt-4 border-t border-white/5 text-xs font-mono text-amber-300">
            <span>Node.js</span><span>•</span><span>CLI</span><span>•</span><span>OpenAI API</span>
          </div>
        </article>
      </div>
    </section>

    <!-- Experience Timeline Section -->
    <section id="experience" class="space-y-6">
      <div>
        <p class="text-xs font-mono text-emerald-400 uppercase tracking-wider">Career Journey</p>
        <h2 class="text-3xl font-bold text-white mt-1">Experience</h2>
      </div>

      <div class="bento-card rounded-3xl p-8 space-y-8">
        <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2 border-b border-white/5 pb-6">
          <div>
            <h3 class="text-lg font-bold text-white">Senior Frontend & Product Engineer</h3>
            <p class="text-sm text-emerald-400">Remote Tech Studio • Full-time</p>
          </div>
          <span class="text-xs font-mono text-zinc-400 bg-white/5 px-3 py-1 rounded-full w-fit">2024 — Present</span>
        </div>
        <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
          <div>
            <h3 class="text-lg font-bold text-white">Full-Stack Web Developer</h3>
            <p class="text-sm text-sky-400">Digital Product Agency</p>
          </div>
          <span class="text-xs font-mono text-zinc-400 bg-white/5 px-3 py-1 rounded-full w-fit">2022 — 2024</span>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="bento-card rounded-3xl p-8 sm:p-12 relative overflow-hidden">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center relative z-10">
        <div class="space-y-4">
          <p class="text-xs font-mono text-emerald-400 uppercase tracking-wider">Let's Connect</p>
          <h2 class="text-3xl font-bold text-white">Let's build something exceptional together.</h2>
          <p class="text-sm text-zinc-400 leading-relaxed">
            Have an exciting project, job opening, or collaboration in mind? Send me a message and let's make it happen.
          </p>
          <button onclick="copyEmail()" class="inline-flex items-center gap-2 text-xs font-mono text-emerald-400 hover:text-emerald-300 font-bold">
            <i data-lucide="mail" class="w-4 h-4"></i>
            <span id="contactEmailDisplay">hello@shahzaib.dev</span>
          </button>
        </div>

        <form onsubmit="handleContact(event)" class="space-y-4">
          <input type="text" required placeholder="Your Name" class="w-full px-4 py-3 rounded-2xl bg-slate-900 border border-white/10 text-sm text-white placeholder-zinc-500 focus:outline-none focus:border-emerald-500" />
          <input type="email" required placeholder="you@example.com" class="w-full px-4 py-3 rounded-2xl bg-slate-900 border border-white/10 text-sm text-white placeholder-zinc-500 focus:outline-none focus:border-emerald-500" />
          <textarea rows="3" required placeholder="Tell me about your project..." class="w-full px-4 py-3 rounded-2xl bg-slate-900 border border-white/10 text-sm text-white placeholder-zinc-500 focus:outline-none focus:border-emerald-500"></textarea>
          <button type="submit" class="w-full py-3 rounded-2xl bg-emerald-500 text-zinc-950 font-bold text-sm hover:bg-emerald-400 transition shadow-lg shadow-emerald-500/20">
            Send Message
          </button>
        </form>
      </div>
    </section>

  </main>

  <footer class="border-t border-white/5 py-8 text-center text-xs font-mono text-zinc-500">
    <p>© <span id="year">2026</span> <span id="footerName">Shahzaib</span>. Built with passion & precision.</p>
  </footer>

  <!-- Toast Notification -->
  <div id="toast" class="fixed bottom-5 right-5 z-50 hidden items-center gap-2.5 px-4 py-3 rounded-2xl bg-slate-900 border border-emerald-500/30 text-xs font-mono text-white shadow-2xl">
    <i data-lucide="check-circle-2" class="w-4 h-4 text-emerald-400"></i>
    <span id="toastMsg">Copied successfully!</span>
  </div>

  <!-- Live Customizer Modal -->
  <div id="customizerModal" class="fixed inset-0 z-50 hidden items-center justify-center bg-black/80 backdrop-blur-md p-4">
    <div class="bg-slate-950 border border-white/15 rounded-3xl max-w-md w-full p-6 space-y-4 shadow-2xl">
      <div class="flex items-center justify-between">
        <h3 class="font-bold text-white flex items-center gap-2">
          <i data-lucide="sparkles" class="w-4 h-4 text-emerald-400"></i> Customize Portfolio
        </h3>
        <button onclick="closeCustomizer()" class="text-zinc-400 hover:text-white"><i data-lucide="x" class="w-4 h-4"></i></button>
      </div>
      <div class="space-y-3 text-xs">
        <div><label class="text-zinc-400 block mb-1">Your Name</label><input id="inputName" type="text" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white" /></div>
        <div><label class="text-zinc-400 block mb-1">Headline</label><input id="inputHeadline" type="text" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white" /></div>
        <div><label class="text-zinc-400 block mb-1">Bio</label><textarea id="inputBio" rows="2" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white"></textarea></div>
        <div class="grid grid-cols-2 gap-2">
          <div><label class="text-zinc-400 block mb-1">Email</label><input id="inputEmail" type="email" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white" /></div>
          <div><label class="text-zinc-400 block mb-1">Location</label><input id="inputLocation" type="text" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white" /></div>
        </div>
        <div><label class="text-zinc-400 block mb-1">GitHub URL</label><input id="inputGithub" type="url" class="w-full px-3.5 py-2.5 rounded-xl bg-slate-900 border border-white/10 text-white" /></div>
      </div>
      <div class="flex justify-end gap-2 pt-2">
        <button onclick="closeCustomizer()" class="px-4 py-2 rounded-xl text-xs text-zinc-400 hover:text-white">Cancel</button>
        <button onclick="saveCustomizer()" class="px-4 py-2 rounded-xl text-xs font-bold bg-emerald-500 text-zinc-950 hover:bg-emerald-400">Save Changes</button>
      </div>
    </div>
  </div>

  <script>
    lucide.createIcons();
    document.getElementById('year').textContent = new Date().getFullYear();

    // Three.js 3D Rotating Torus Knot Animation
    const container = document.getElementById('canvas-container');
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(75, container.clientWidth / container.clientHeight, 0.1, 1000);
    const renderer = new THREE.WebGLRenderer({ alpha: true, antialias: true });
    renderer.setSize(container.clientWidth, container.clientHeight);
    container.appendChild(renderer.domElement);

    const geometry = new THREE.TorusKnotGeometry(10, 3, 100, 16);
    const material = new THREE.MeshStandardMaterial({ 
      color: 0x10b981, 
      roughness: 0.2, 
      metalness: 0.8,
      wireframe: false 
    });
    const torusKnot = new THREE.Mesh(geometry, material);
    scene.add(torusKnot);

    const light = new THREE.PointLight(0x38bdf8, 2, 50);
    light.position.set(10, 10, 10);
    scene.add(light);

    const ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
    scene.add(ambientLight);

    camera.position.z = 30;

    function animate3D() {
      requestAnimationFrame(animate3D);
      torusKnot.rotation.x += 0.005;
      torusKnot.rotation.y += 0.008;
      renderer.render(scene, camera);
    }
    animate3D();

    // Live Clock
    function updateClock() {
      const now = new Date();
      document.getElementById('liveClock').textContent = now.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    }
    updateClock();
    setInterval(updateClock, 10000);

    // Toast Notification Helper
    function showToast(msg) {
      const toast = document.getElementById('toast');
      document.getElementById('toastMsg').textContent = msg;
      toast.classList.remove('hidden');
      toast.classList.add('flex');
      setTimeout(() => {
        toast.classList.add('hidden');
        toast.classList.remove('flex');
      }, 2600);
    }

    function copyEmail() {
      const email = document.getElementById('heroEmail').textContent;
      navigator.clipboard.writeText(email);
      showToast('Email copied: ' + email);
    }

    function handleContact(e) {
      e.preventDefault();
      e.target.reset();
      showToast('Message sent successfully!');
    }

    // Project Filtering
    function filterProjects(category) {
      document.querySelectorAll('.filter-btn').forEach(btn => {
        if (btn.dataset.filter === category) {
          btn.classList.add('bg-emerald-500', 'text-zinc-950');
          btn.classList.remove('text-zinc-400');
        } else {
          btn.classList.remove('bg-emerald-500', 'text-zinc-950');
          btn.classList.add('text-zinc-400');
        }
      });
      document.querySelectorAll('.project-card').forEach(card => {
        if (category === 'all' || card.dataset.category === category) {
          card.style.display = 'flex';
        } else {
          card.style.display = 'none';
        }
      });
    }

    // Customizer Persistence
    const defaultData = {
      name: 'Shahzaib',
      headline: 'I build high-end 3D & Web experiences.',
      bio: 'Full-stack developer & creative technologist crafting immersive digital products with cutting-edge web technologies, fluid animations, and robust backend architecture.',
      email: 'hello@shahzaib.dev',
      location: 'Islamabad, Pakistan',
      github: 'https://github.com/Shahzaibsz99'
    };

    function applyData(data) {
      document.getElementById('heroName').textContent = data.name;
      document.getElementById('footerName').textContent = data.name;
      document.getElementById('navName').textContent = data.name.toLowerCase().replace(/\s+/g, '') + '.dev';
      document.getElementById('heroHeadline').textContent = data.headline;
      document.getElementById('heroBio').textContent = data.bio;
      document.getElementById('heroEmail').textContent = data.email;
      document.getElementById('contactEmailDisplay').textContent = data.email;
      document.getElementById('heroLocation').textContent = data.location;
      document.getElementById('linkGithub').href = data.github;
    }

    const saved = JSON.parse(localStorage.getItem('portfolio_data') || 'null') || defaultData;
    applyData(saved);

    function openCustomizer() {
      const current = JSON.parse(localStorage.getItem('portfolio_data') || 'null') || defaultData;
      document.getElementById('inputName').value = current.name;
      document.getElementById('inputHeadline').value = current.headline;
      document.getElementById('inputBio').value = current.bio;
      document.getElementById('inputEmail').value = current.email;
      document.getElementById('inputLocation').value = current.location;
      document.getElementById('inputGithub').value = current.github;
      document.getElementById('customizerModal').classList.remove('hidden');
      document.getElementById('customizerModal').classList.add('flex');
    }

    function closeCustomizer() {
      document.getElementById('customizerModal').classList.add('hidden');
      document.getElementById('customizerModal').classList.remove('flex');
    }

    function saveCustomizer() {
      const updated = {
        name: document.getElementById('inputName').value || defaultData.name,
        headline: document.getElementById('inputHeadline').value || defaultData.headline,
        bio: document.getElementById('inputBio').value || defaultData.bio,
        email: document.getElementById('inputEmail').value || defaultData.email,
        location: document.getElementById('inputLocation').value || defaultData.location,
        github: document.getElementById('inputGithub').value || defaultData.github,
      };
      localStorage.setItem('portfolio_data', JSON.stringify(updated));
      applyData(updated);
      closeCustomizer();
      showToast('Portfolio successfully updated!');
    }
  </script>
</body>
</html>
