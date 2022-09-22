############################################################################################################################
## Instalar pnpm
############################################################################################################################
(aws-imh) imendozah@geshuro moh-spain % curl -fsSL https://get.pnpm.io/install.sh | sh -
==> Extracting pnpm binaries 7.4.0
tar: Failed to set default locale
Copying pnpm CLI from /private/var/folders/97/ngs3bk9d5mg4_6jc_2142b0w0000gn/T/tmp.OUl7jNMc/pnpm to /Users/imendozah/Library/pnpm/pnpm
Appended new lines to /Users/imendozah/.zshrc

Next configuration changes were made:
export PNPM_HOME="/Users/imendozah/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

Setup complete. Open a new terminal to start using pnpm.
############################################################################################################################
Version pnpm
############################################################################################################################
(aws-imh) imendozah@geshuro moh-spain % pnpm --version
7.4.0


############################################################################################################################
Iniciar pnpm
############################################################################################################################
(aws-imh) imendozah@geshuro moh-spain % pnpm initial-setup

> @ initial-setup /Users/imendozah/Documents/trabajo/grupo-accelera/atos/pry-mhealthspain/poc/cdk/moh-spain
> pnpm install --frozen-lockfile && pnpm build -r && pnpm bundle -r

Scope: all 37 workspace projects
Lockfile is up-to-date, resolution step is skipped
Packages: +2465
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Packages are hard linked from the content-addressable store to the virtual store.
  Content-addressable store is at: /Users/imendozah/Library/pnpm/store/v3
  Virtual store is at:             node_modules/.pnpm
Downloading registry.npmjs.org/react-icons/4.3.1: 13.4 MB/13.4 MB, done
Downloading registry.npmjs.org/typescript/4.5.2: 11.3 MB/11.3 MB, done
Downloading registry.npmjs.org/aws-sdk/2.1031.0: 8.37 MB/8.37 MB, done
Downloading registry.npmjs.org/typescript/4.4.4: 11 MB/11 MB, done
Downloading registry.npmjs.org/pdf-parse/1.1.1: 11.9 MB/11.9 MB, done
Downloading registry.npmjs.org/@aws-cdk/lambda-layer-awscli/1.134.0: 11 MB/11 MB, done
Downloading registry.npmjs.org/pdf-extraction/1.0.2: 11.6 MB/11.6 MB, done
Downloading registry.npmjs.org/@aws-cdk/lambda-layer-kubectl/1.134.0: 24.2 MB/24.2 MB, done
Progress: resolved 2465, reused 0, downloaded 2382, added 2465, done
node_modules/.pnpm/core-js-pure@3.19.1/node_modules/core-js-pure: Running postinstall script, done in 101ms
node_modules/.pnpm/@nestjs+core@7.6.18_ad92c204621b18a69181da190abca121/node_modules/@nestjs/core: Running postinstall script, done in 834ms
node_modules/.pnpm/@nestjs+core@7.6.18_cf22c14faf7a8288645a80ae61717d6f/node_modules/@nestjs/core: Running postinstall script, done in 831ms
node_modules/.pnpm/@nestjs+core@7.6.18_@nestjs+common@7.6.18/node_modules/@nestjs/core: Running postinstall script, done in 833ms
node_modules/.pnpm/@nestjs+core@7.6.18_f68191e5ff76da46b0e7001b964108a3/node_modules/@nestjs/core: Running postinstall script, done in 1s
node_modules/.pnpm/core-js@2.6.12/node_modules/core-js: Running postinstall script, done in 36ms
node_modules/.pnpm/core-js@3.19.1/node_modules/core-js: Running postinstall script, done in 48ms
node_modules/.pnpm/ejs@2.7.4/node_modules/ejs: Running postinstall script, done in 34ms
node_modules/.pnpm/esbuild@0.12.29/node_modules/esbuild: Running postinstall script, done in 3.6s
node_modules/.pnpm/fsevents@1.2.13/node_modules/fsevents: Running install script, failed in 103ms (skipped as optional)
node_modules/.pnpm/nodemon@2.0.15/node_modules/nodemon: Running postinstall script, done in 99ms
node_modules/.pnpm/esbuild@0.13.14/node_modules/esbuild: Running postinstall script, done in 173ms

devDependencies:
+ esbuild 0.13.14
+ husky 7.0.4
 ERR_PNPM_RECURSIVE_EXEC_FIRST_FAIL  not found: build
 ELIFECYCLE  Command failed with exit code 1.
(aws-imh) imendozah@geshuro moh-spain % 



instalas Node.js v14.18.1
npm install -g pnpm@6.3.0
--se deja npm install husky

cd /Users/imendozah/Documents/trabajo/grupo-accelera/atos/pry-mhealthspain/poc/cdk/moh-spain/components/core/common
cd /Users/imendozah/Documents/trabajo/grupo-accelera/atos/pry-mhealthspain/poc/cdk/moh-spain/components/core/infra
npm i --save-dev @types/lodash
npm install aws-ee/common

/Users/imendozah/Documents/trabajo/grupo-accelera/atos/pry-mhealthspain/poc/cdk/moh-spain/components/core/common
npm i --save-dev @types/jest
npm i --save-dev @types/node
tsc --project ./tsconfig.json --noEmit

Consultar:
Falta algunos typados en los package.json de algunos subrepo
No reconoce el paquete @aws-ee/common, no descarga de una dependencia remoto sino es recursivo de algunos modulos.
