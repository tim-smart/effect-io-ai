# annotations

Retrieves the `Annotations` service for this test.

To import and use `annotations` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.annotations
```

**Signature**

```ts
export declare const annotations: () => Effect.Effect<never, never, Annotations.TestAnnotations>
```
