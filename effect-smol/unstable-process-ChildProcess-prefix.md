Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.prefix

Prefix a command with another command.

**Details**

For pipelines, only the leftmost command is prefixed.

**Example** (Prefixing commands)

```ts
import { ChildProcess } from "effect/unstable/process"

const command = ChildProcess.make`echo "foo"`

const prefixed = command.pipe(
  ChildProcess.prefix`time`
)

// now prefixed will execute `time echo "foo"`
```

**Signature**

```ts
declare const prefix: { (command: string, args?: ReadonlyArray<string>): (self: Command) => Command; (templates: TemplateStringsArray, ...expressions: ReadonlyArray<TemplateExpression>): (self: Command) => Command; (self: Command, command: string, args?: ReadonlyArray<string>): Command; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L734)

Since v4.0.0