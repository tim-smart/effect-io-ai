Package: `effect`<br />
Module: `Flag`<br />

## Flag.fileText

Creates a flag that reads and returns file content as a string.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const config = Flag.fileText("config-file")
// --config-file ./app.json will read the file content
```

**Signature**

```ts
declare const fileText: (name: string) => Flag<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L267)

Since v4.0.0