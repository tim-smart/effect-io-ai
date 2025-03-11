## all

Runs all the provided effects in sequence respecting the structure provided in input.

Supports multiple arguments, a single argument tuple / array or record / struct.

**Signature**

```ts
declare const all: <const Arg extends Iterable<Micro<any, any, any>> | Record<string, Micro<any, any, any>>, O extends NoExcessProperties<{ readonly concurrency?: Concurrency | undefined; readonly discard?: boolean | undefined; }, O>>(arg: Arg, options?: O) => All.Return<Arg, O>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3800)

Since v3.4.0