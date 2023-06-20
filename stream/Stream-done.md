# done

The stream that ends with the specified `Exit` value.

To import and use `done` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.done
```

**Signature**

```ts
export declare const done: <E, A>(exit: Exit.Exit<E, A>) => Stream<never, E, A>
```
