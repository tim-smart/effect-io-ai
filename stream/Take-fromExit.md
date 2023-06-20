# fromExit

Creates a `Take` from an `Exit`.

To import and use `fromExit` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.fromExit
```

**Signature**

```ts
export declare const fromExit: <E, A>(exit: Exit.Exit<E, A>) => Take<E, A>
```
