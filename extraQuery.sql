/*
Query used to elicit information regarding cars that have had specialised parts returned due to faults during their repair.
*/

SELECT car.id AS car_id,
	car.registration,
	work_plan.id AS work_plan_id,
	work_plan.work_plan_car_id AS work_plan_car_id,
	job.id AS job_id, job.job_work_plan_id AS job_work_plan_id,
	special_part.id AS special_part_id,
	special_part.part_name,
	special_part.special_job_id,
	special_part.return_date
	FROM car, work_plan, job, special_part
	WHERE car.id = work_plan.work_plan_car_id AND work_plan.id = job.job_work_plan_id AND job.id = special_part.special_job_id
	AND special_part.return_date IS NOT NULL;
