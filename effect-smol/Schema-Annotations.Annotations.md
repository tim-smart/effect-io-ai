Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Annotations

This interface is used to define the annotations that can be attached to a
schema. You can extend this interface to define your own annotations.

Note that both a missing key or `undefined` is used to indicate that the
annotation is not present.

This means that can remove any annotation by setting it to `undefined`.

**Example** (Defining your own annotations)

```ts
import { Schema } from "effect"

// Extend the Annotations interface with a custom `version` annotation
declare module "effect/Schema" {
  namespace Annotations {
    interface Annotations {
      readonly version?:
        | readonly [major: number, minor: number, patch: number]
        | undefined
    }
  }
}

// The `version` annotation is now recognized by the TypeScript compiler
const schema = Schema.String.annotate({ version: [1, 2, 0] })

// const version: readonly [major: number, minor: number, patch: number] | undefined
const version = Schema.resolveAnnotations(schema)?.["version"]

if (version) {
  // Access individual parts of the version
  console.log(version[1])
  // Output: 2
}
```

**Signature**

```ts
export interface Annotations {
    readonly [x: string]: unknown
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11739)

Since v4.0.0