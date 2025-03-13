Package: `@effect/vitest`<br />
Module: `index`<br />

## index.layer

Share a `Layer` between multiple tests, optionally wrapping
the tests in a `describe` block if a name is provided.

**Signature**

```ts
declare const layer: <R, E>(layer_: Layer.Layer<R, E>, options?: { readonly memoMap?: Layer.MemoMap; readonly timeout?: Duration.DurationInput; }) => { (f: (it: Vitest.MethodsNonLive<R>) => void): void; (name: string, f: (it: Vitest.MethodsNonLive<R>) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/index.ts#L204)

Since v1.0.0

```ts
import { expect, layer } from "@effect/vitest"
import { Context, Effect, Layer } from "effect"

class Foo extends Context.Tag("Foo")<Foo, "foo">() {
  static Live = Layer.succeed(Foo, "foo")
}

class Bar extends Context.Tag("Bar")<Bar, "bar">() {
  static Live = Layer.effect(
    Bar,
    Effect.map(Foo, () => "bar" as const)
  )
}

layer(Foo.Live)("layer", (it) => {
  it.effect("adds context", () =>
    Effect.gen(function* () {
      const foo = yield* Foo
      expect(foo).toEqual("foo")
    })
  )

  it.layer(Bar.Live)("nested", (it) => {
    it.effect("adds context", () =>
      Effect.gen(function* () {
        const foo = yield* Foo
        const bar = yield* Bar
        expect(foo).toEqual("foo")
        expect(bar).toEqual("bar")
      })
    )
  })
})
```