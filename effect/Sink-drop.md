# drop

Creates a sink that drops `n` elements.

To import and use `drop` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.drop
```

**Signature**

```ts
export declare const drop: <In>(n: number) => Sink<never, never, In, In, unknown>
```
