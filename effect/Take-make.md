# make

Constructs a `Take`.

To import and use `make` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.make
```

**Signature**

```ts
export declare const make: <A, E>(exit: Exit.Exit<Chunk.Chunk<A>, Option.Option<E>>) => Take<A, E>
```
