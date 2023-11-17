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
export declare const make: <E, A>(exit: Exit.Exit<Option.Option<E>, Chunk.Chunk<A>>) => Take<E, A>
```
