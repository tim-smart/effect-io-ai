# literal

Constructs a config for a literal value.

To import and use `literal` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.literal
```

**Example**

```ts
import { Config } from "effect"

const config = Config.literal("http", "https")("PROTOCOL")
```

**Signature**

```ts
export declare const literal: <Literals extends readonly LiteralValue[]>(
  ...literals: Literals
) => (name?: string) => Config<Literals[number]>
```
