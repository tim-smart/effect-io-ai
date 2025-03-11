## fromEventListener

Creates a `Stream` using addEventListener.

**Signature**

```ts
declare const fromEventListener: <A = unknown>(target: EventListener<A>, type: string, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | "unbounded" | undefined; } | undefined) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6396)

Since v3.1.0