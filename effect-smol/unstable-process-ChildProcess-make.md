Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.make

Create a command from a template literal, options + template, or array form.

This function supports three calling conventions:
1. Template literal: `make\`npm run build\``
2. Options + template literal: `make({ cwd: "/app" })\`npm run build\``
3. Array form: `make("npm", ["run", "build"], options?)`

Template literals are not parsed until execution time, allowing parsing
errors to flow through Effect's error channel.

**Example**

```ts
import { ChildProcess } from "effect/unstable/process"

// Template literal form
const cmd1 = ChildProcess.make`echo "hello"`

// With options
const cmd2 = ChildProcess.make({ cwd: "/tmp" })`ls -la`

// Array form
const cmd3 = ChildProcess.make("git", ["status"])
```

**Signature**

```ts
declare const make: { (command: string, options?: CommandOptions): StandardCommand; (command: string, args: ReadonlyArray<string>, options?: CommandOptions): StandardCommand; (options: CommandOptions): (templates: TemplateStringsArray, ...expressions: ReadonlyArray<TemplateExpression>) => StandardCommand; (templates: TemplateStringsArray, ...expressions: ReadonlyArray<TemplateExpression>): StandardCommand; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L594)

Since v4.0.0