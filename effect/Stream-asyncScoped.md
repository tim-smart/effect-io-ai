# asyncScoped

Creates a stream from an asynchronous callback that can be called multiple
times. The registration of the callback itself returns an a scoped
resource. The optionality of the error type `E` can be used to signal the
end of the stream, by setting it to `None`.

To import and use `asyncScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.asyncScoped
```

**Signature**

```ts
export declare const asyncScoped: <A, E = never, R = never>(
  register: (emit: Emit.Emit<R, E, A, void>) => Effect.Effect<unknown, E, R | Scope.Scope>,
  bufferSize?:
    | number
    | "unbounded"
    | { readonly bufferSize?: number | undefined; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined }
    | undefined
) => Stream<A, E, Exclude<R, Scope.Scope>>
```
