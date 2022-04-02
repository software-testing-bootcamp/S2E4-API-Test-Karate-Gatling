package karateGatling

import com.intuit.karate.gatling.KarateProtocol
import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef.{Simulation, exec, openInjectionProfileFactory, rampUsers, scenario}
import io.gatling.core.structure.ScenarioBuilder

import scala.concurrent.duration.DurationInt
import scala.language.postfixOps

class TestSimulation extends Simulation {

  val getAllScenarios: ScenarioBuilder = scenario("All Cases").exec(karateFeature("classpath:karateGatling/myScenarios1.feature"))
  val getTaggedScenarios: ScenarioBuilder = scenario("Cases with Tag").exec(karateFeature("classpath:karateGatling/myScenarios2.feature@name=performance"))

  val protocol: KarateProtocol = karateProtocol(
    "/karateGatling" -> pauseFor("get" -> 0, "post" -> 0)
  )

  setUp(
    getAllScenarios.inject(rampUsers(15) during (60 seconds)).protocols(protocol),
    getTaggedScenarios.inject(rampUsers(15) during (60 seconds)).protocols(protocol)
  )
}