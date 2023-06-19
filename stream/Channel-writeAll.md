# writeAll

Writes a sequence of values to the channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const writeAll: <OutElems extends any[]>(
  ...outs: OutElems
) => Channel<never, unknown, unknown, unknown, never, OutElems[number], void>
```
