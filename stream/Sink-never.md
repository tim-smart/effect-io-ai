# never

Creates a sink which never terminates.

To import and use `never` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.never
```

**Signature**

```ts
export declare const never: () => Sink<never, never, unknown, never, never>
```
