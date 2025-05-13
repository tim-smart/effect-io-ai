Package: `effect`<br />
Module: `Effect`<br />

## Effect.firstSuccessOf

Runs a sequence of effects and returns the result of the first successful
one.

**Details**

This function allows you to execute a collection of effects in sequence,
stopping at the first success. If an effect succeeds, its result is
immediately returned, and no further effects in the sequence are executed.
However, if all the effects fail, the function will return the error of the
last effect.

The execution is sequential, meaning that effects are evaluated one at a time
in the order they are provided. This ensures predictable behavior and avoids
unnecessary computations.

If the collection of effects is empty, an `IllegalArgumentException` is
thrown, indicating that the operation is invalid without any effects to try.

**When to Use**

This is particularly useful when you have multiple fallback strategies or
alternative sources to obtain a result, such as attempting multiple APIs,
retrieving configurations, or accessing resources in a prioritized manner.

**Example**

```ts
import { Effect, Console } from "effect"

interface Config {
  host: string
  port: number
  apiKey: string
}

// Create a configuration object with sample values
const makeConfig = (name: string): Config => ({
  host: `${name}.example.com`,
  port: 8080,
  apiKey: "12345-abcde"
})

// Simulate retrieving configuration from a remote node
const remoteConfig = (name: string): Effect.Effect<Config, Error> =>
  Effect.gen(function* () {
    // Simulate node3 being the only one with available config
    if (name === "node3") {
      yield* Console.log(`Config for ${name} found`)
      return makeConfig(name)
    } else {
      yield* Console.log(`Unavailable config for ${name}`)
      return yield* Effect.fail(new Error(`Config not found for ${name}`))
    }
  })

// Define the master configuration and potential fallback nodes
const masterConfig = remoteConfig("master")
const nodeConfigs = ["node1", "node2", "node3", "node4"].map(remoteConfig)

// Attempt to find a working configuration,
// starting with the master and then falling back to other nodes
const config = Effect.firstSuccessOf([masterConfig, ...nodeConfigs])

// Run the effect to retrieve the configuration
const result = Effect.runSync(config)

console.log(result)
// Output:
// Unavailable config for master
// Unavailable config for node1
// Unavailable config for node2
// Config for node3 found
// { host: 'node3.example.com', port: 8080, apiKey: '12345-abcde' }
```

**Signature**

```ts
declare const firstSuccessOf: <Eff extends Effect<any, any, any>>(effects: Iterable<Eff>) => Effect<Effect.Success<Eff>, Effect.Error<Eff>, Effect.Context<Eff>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11523)

Since v2.0.0