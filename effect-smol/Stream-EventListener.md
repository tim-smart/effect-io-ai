Package: `effect`<br />
Module: `Stream`<br />

## Stream.EventListener

Interface representing an event listener target.

**Signature**

```ts
export interface EventListener<A> {
  addEventListener(
    event: string,
    f: (event: A) => void,
    options?: {
      readonly capture?: boolean
      readonly passive?: boolean
      readonly once?: boolean
      readonly signal?: AbortSignal
    } | boolean
  ): void
  removeEventListener(
    event: string,
    f: (event: A) => void,
    options?: {
      readonly capture?: boolean
    } | boolean
  ): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1409)

Since v3.4.0