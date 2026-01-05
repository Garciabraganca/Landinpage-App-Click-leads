# Landinpage-App-Click-leads
# 🚀 Click Leads — Landing Page Oficial

Landing page institucional do **Click Leads**, produto do **Grupo Garcia**, construída para apresentar
a plataforma, reforçar autoridade, contar o storytelling do Andrezinho e gerar conversões com CTA direto para login/entrada na plataforma.

Este projeto foi otimizado para ser hospedado diretamente na **Vercel**, como site estático.

---

## 📌 Tecnologias utilizadas

- HTML5
- CSS3 (responsivo + tons escuros premium)
- Estrutura mobile-first
- Imagens oficiais do Click Leads (ilustrações + logo)

Nenhum framework é necessário.  
Nenhuma build é necessária.  
A Vercel faz o deploy instantâneo.

---

## 📂 Estrutura do projeto

## 🧰 Resolvendo conflitos de mídia

Para evitar conflitos ao mesclar branches com atualizações em arquivos binários (vídeos e imagens), os
assets foram marcados como binários e configurados para manter a versão da sua branch durante o merge.

Se você já estiver no meio de um conflito em `video-app.mp4`, use o script auxiliar e finalize o merge:

```bash
chmod +x scripts/resolve-video-conflict.sh
./scripts/resolve-video-conflict.sh
git commit --no-edit
```

Depois disso, conclua normalmente o merge/pull.

